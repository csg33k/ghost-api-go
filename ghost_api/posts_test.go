package ghost_api

import (
	"encoding/json"
	"fmt"
	"github.com/csg33k/ghost-api/internal/tools"
	"github.com/google/uuid"

	"github.com/csg33k/ghost-api/models"
	"github.com/csg33k/ghost-api/test_common"
	"github.com/gomarkdown/markdown"
	"github.com/jarcoal/httpmock"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestPostListing(t *testing.T) {
	creds := test_common.NewCommon()
	adminClient := NewGhostApiClient(creds.GhostHost, "", creds.AdminKey)
	if !test_common.IsIntegration() {
		//Register Mock
		jsonResponse := string(test_common.ReadLocalFile(t, "test_data/mock_data/content_posts.json"))
		httpmock.Activate()
		defer httpmock.DeactivateAndReset()
		httpmock.RegisterResponder("GET", "http://localhost:2368/ghost/api/admin/posts/",
			httpmock.NewStringResponder(200, jsonResponse))
	}
	posts, err := adminClient.ListPosts(AdminScope, nil)
	assert.Nil(t, err)
	assert.Equal(t, len(posts), 1)
	post := posts[0]
	assert.Equal(t, *post.Title, "Coming soon")
	assert.Equal(t, *post.HTML, `<p>This is Testing, a brand new site by Testing that's just getting started. Things will be up and running here shortly, but you can <a href="#/portal/">subscribe</a> in the meantime if you'd like to stay up to date and receive emails when new content is published!</p>`)
	assert.Equal(t, *post.Visibility, "public")

}

func TestCreatePost(t *testing.T) {
	creds := test_common.NewCommon()
	adminClient := NewGhostApiClient(creds.GhostHost, creds.ContentKey, creds.AdminKey)
	if !test_common.IsIntegration() {
		//Register Mock
		jsonResponse := string(test_common.ReadLocalFile(t, "test_data/mock_data/content_posts.json"))
		httpmock.Activate()
		//defer httpmock.DeactivateAndReset()
		httpmock.RegisterResponder("GET", "http://localhost:2368/ghost/api/admin/posts/",
			httpmock.NewStringResponder(200, jsonResponse))
		httpmock.RegisterResponder("POST", "http://localhost:2368/ghost/api/admin/posts/",
			httpmock.NewStringResponder(201, jsonResponse))
	}
	before, err := adminClient.ListPosts(AdminScope, nil)
	assert.Nil(t, err)
	p := &models.PostParams{
		Title:    tools.PtrTo("Posting via Go"),
		Markdown: tools.PtrTo(`This is a **test post** made with the [go-ghost](https://github.com/csg33k/ghost-api) library.`),
		Status:   tools.PtrTo("published"),
	}

	err = adminClient.AddPost(*p)
	assert.Nil(t, err)
	if !test_common.IsIntegration() {
		httpmock.DeactivateAndReset()
		//Register Mock
		jsonResponse := string(test_common.ReadLocalFile(t, "test_data/mock_data/content_posts.json"))
		var testData []byte
		resp := &models.PostListing{}
		err = json.Unmarshal([]byte(jsonResponse), &resp)
		assert.Nil(t, err)
		resp.Posts = append(resp.Posts, models.Post{
			UUID:  tools.PtrTo(uuid.New().String()),
			Title: p.Title,
			HTML:  tools.PtrTo(string(markdown.ToHTML([]byte(*p.Markdown), nil, nil))),
		})

		testData, err = json.Marshal(resp)
		assert.Nil(t, err)

		httpmock.Activate()
		defer httpmock.DeactivateAndReset()
		httpmock.RegisterResponder("GET", "http://localhost:2368/ghost/api/admin/posts/",
			httpmock.NewBytesResponder(200, testData))

	}
	after, err := adminClient.ListPosts(AdminScope, nil)
	assert.Nil(t, err)
	assert.Equal(t, len(after), len(before)+1)

}

func TestGetPostsById(t *testing.T) {
	creds := test_common.NewCommon()
	contentClient := NewGhostApiClient(creds.GhostHost, creds.ContentKey, creds.AdminKey)
	var err error
	var id string
	if !test_common.IsIntegration() {
		//Register Mock
		jsonResponse := string(test_common.ReadLocalFile(t, "test_data/mock_data/content_posts.json"))
		httpmock.Activate()
		defer httpmock.DeactivateAndReset()
		resp := &models.PostListing{}
		err = json.Unmarshal([]byte(jsonResponse), &resp)
		assert.Nil(t, err)
		id = *resp.Posts[0].ID
		httpmock.RegisterResponder("GET", fmt.Sprintf("http://localhost:2368/ghost/api/content/posts/%s?key=%s", id, creds.ContentKey),
			httpmock.NewStringResponder(200, jsonResponse))
	}
	post, err := contentClient.GetPostById(ContentScope, id)
	assert.Equal(t, *post.ID, id)
	assert.Equal(t, *post.Title, "Coming soon")
	assert.Equal(t, *post.HTML, `<p>This is Testing, a brand new site by Testing that's just getting started. Things will be up and running here shortly, but you can <a href="#/portal/">subscribe</a> in the meantime if you'd like to stay up to date and receive emails when new content is published!</p>`)
	assert.Equal(t, *post.Visibility, "public")

}

func TestListContentPosts(t *testing.T) {
	creds := test_common.NewCommon()
	contentClient := NewGhostApiClient(creds.GhostHost, creds.ContentKey, creds.AdminKey)
	if !test_common.IsIntegration() {
		//Register Mock
		jsonResponse := string(test_common.ReadLocalFile(t, "test_data/mock_data/content_posts.json"))
		httpmock.Activate()
		defer httpmock.DeactivateAndReset()
		httpmock.RegisterResponder("GET", fmt.Sprintf("http://localhost:2368/ghost/api/content/posts/?key=%s", creds.ContentKey),
			httpmock.NewStringResponder(200, jsonResponse))
	}
	posts, err := contentClient.ListPosts(ContentScope, nil)
	assert.Nil(t, err)
	assert.Equal(t, len(posts), 1)
	post := posts[0]
	assert.Equal(t, *post.Title, "Coming soon")
	assert.Equal(t, *post.HTML, `<p>This is Testing, a brand new site by Testing that's just getting started. Things will be up and running here shortly, but you can <a href="#/portal/">subscribe</a> in the meantime if you'd like to stay up to date and receive emails when new content is published!</p>`)
	assert.Equal(t, *post.Visibility, "public")

}
