package ghost_api

import (
	"github.com/carlmjohnson/requests"
	"github.com/csg33k/ghost-api/ghost_api/providers"
	"github.com/csg33k/ghost-api/models"
	"github.com/rs/zerolog/log"
)

type Scope string

const (
	AdminScope   = "admin"
	ContentScope = "content"
)

type Contract interface {
	ListPosts(Scope, map[string]string) ([]models.Post, error)
	AddPost(p models.PostParams) error
	AddPosts(p []models.PostParams) error
	GetPostById(Scope, string) (*models.Post, error)
}

type GhostClient struct {
	adminApiProvider   providers.APIProvider
	contentApiProvider providers.APIProvider
}

func (s *GhostClient) UpdateRequest(provider providers.APIProvider, builder *requests.Builder, m map[string]string) {
	for key, val := range provider.Headers() {
		builder.Header(key, val...)
	}
	for key, val := range provider.Query() {
		builder.Param(key, val)
	}
	for key, val := range m {
		builder.Param(key, val)
	}
}

func (s *GhostClient) isAdmin() bool {
	return s.adminApiProvider != nil
}

func NewGhostApiClient(url, contentKey, adminKey string) Contract {
	if contentKey == "" && adminKey == "" {
		log.Fatal().Msg("Either adminkey or content key is required to use API")
	}
	s := &GhostClient{}
	if contentKey != "" {
		s.contentApiProvider = providers.NewContentProvider(url, contentKey)
	}
	if adminKey != "'" {
		s.adminApiProvider = providers.NewAdminProvider(url, adminKey)
	}

	return s
}
