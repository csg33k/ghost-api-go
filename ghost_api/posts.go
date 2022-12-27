package ghost_api

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"github.com/carlmjohnson/requests"
	"github.com/csg33k/ghost-api/ghost_api/providers"
	"github.com/csg33k/ghost-api/internal/rest"
	"github.com/csg33k/ghost-api/internal/tools"
	"github.com/csg33k/ghost-api/models"
	"github.com/jinzhu/copier"
	"github.com/writeas/go-mobiledoc"
	"net/http"
)

func (s *GhostClient) AddPosts(p []models.PostParams) error {
	if !s.isAdmin() {
		return errors.New("admin api is not configured")
	}
	bldr := requests.
		URL(s.adminApiProvider.GetProviderURL()).
		Pathf(rest.EndPoint(AdminScope, "posts")).
		Method(http.MethodPost)
	s.UpdateRequest(s.adminApiProvider, bldr, nil)

	for _, entry := range p {
		// Convert params to mobiledoc
		if entry.Markdown != nil && *entry.Markdown != "" {
			mobdoc, err := json.Marshal(mobiledoc.FromMarkdown(*entry.Markdown))
			if err == nil {
				entry.Mobiledoc = tools.PtrTo(string(mobdoc))
				entry.Markdown = nil
			}
		}
	}
	body := map[string]interface{}{
		"posts": p,
	}
	bldr.BodyJSON(body)
	err := bldr.Fetch(context.Background())
	return err
}

func (s *GhostClient) AddPost(p models.PostParams) error {
	return s.AddPosts([]models.PostParams{p})
}

func (s *GhostClient) validateScope(scope Scope) (providers.APIProvider, error) {
	var provider providers.APIProvider
	switch scope {
	case AdminScope:
		provider = s.adminApiProvider
	case ContentScope:
		provider = s.contentApiProvider
	default:
		return nil, errors.New("invalid scope")
	}

	return provider, nil
}

func (s *GhostClient) ListPosts(scope Scope, m map[string]string) ([]models.Post, error) {
	provider, err := s.validateScope(scope)
	if err != nil {
		return nil, err
	}

	var all *models.PostListing
	v := new(models.PostListing)
	for {
		if v.GetCurrentPage() != 0 && v.GetPageCount() == v.GetCurrentPage() {
			break
		}
		bldr := requests.
			URL(provider.GetProviderURL()).
			Pathf(rest.EndPoint(string(scope), "posts")).
			Method(http.MethodGet).
			ToJSON(v)
		if v.GetNextPage() != 0 {
			bldr.Param("page", fmt.Sprintf("%d", v.GetNextPage()))
		}

		s.UpdateRequest(provider, bldr, m)

		err = bldr.Fetch(context.Background())
		if err != nil {
			return nil, err
		}
		if all == nil {
			if v.GetPageCount() == v.Meta.Pagination.Page {
				all = v
			} else {
				all = new(models.PostListing)
				err = copier.Copy(all, v)
				if err != nil {
					return nil, err
				}
			}
		} else {
			all.Posts = append(all.Posts, v.Posts...)
		}
	}

	return all.Posts, nil

}

func (s *GhostClient) GetPostById(scope Scope, id string) (*models.Post, error) {
	provider, err := s.validateScope(scope)
	if err != nil {
		return nil, err
	}

	v := new(models.PostListing)
	bldr := requests.
		URL(provider.GetProviderURL()).
		Pathf(rest.EndpointForID(string(scope), "posts", id)).
		Method(http.MethodGet).
		ToJSON(v)

	s.UpdateRequest(provider, bldr, nil)
	err = bldr.Fetch(context.Background())
	if err != nil {
		return nil, err
	}
	if len(v.Posts) == 0 {
		return nil, errors.New("Post was not found")
	}
	return &v.Posts[0], nil
}
