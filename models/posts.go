package models

import "time"

type Post struct {
	ID                  *string     `json:"id"`
	UUID                *string     `json:"uuid"`
	Title               *string     `json:"title"`
	Slug                *string     `json:"slug"`
	HTML                *string     `json:"html"`
	CommentID           *string     `json:"comment_id"`
	FeatureImage        *string     `json:"feature_image"`
	Featured            *bool       `json:"featured"`
	Visibility          *string     `json:"visibility"`
	CreatedAt           *time.Time  `json:"created_at"`
	UpdatedAt           *time.Time  `json:"updated_at"`
	PublishedAt         *time.Time  `json:"published_at"`
	CustomExcerpt       *string     `json:"custom_excerpt"`
	CodeinjectionHead   interface{} `json:"codeinjection_head"`
	CodeinjectionFoot   interface{} `json:"codeinjection_foot"`
	CustomTemplate      *string     `json:"custom_template"`
	CanonicalURL        interface{} `json:"canonical_url"`
	URL                 *string     `json:"url"`
	Excerpt             *string     `json:"excerpt"`
	ReadingTime         *int        `json:"reading_time"`
	Access              *bool       `json:"access"`
	Comments            *bool       `json:"comments"`
	OgImage             interface{} `json:"og_image"`
	OgTitle             interface{} `json:"og_title"`
	OgDescription       interface{} `json:"og_description"`
	TwitterImage        interface{} `json:"twitter_image"`
	TwitterTitle        interface{} `json:"twitter_title"`
	TwitterDescription  interface{} `json:"twitter_description"`
	MetaTitle           interface{} `json:"meta_title"`
	MetaDescription     interface{} `json:"meta_description"`
	EmailSubject        interface{} `json:"email_subject"`
	Frontmatter         interface{} `json:"frontmatter"`
	FeatureImageAlt     interface{} `json:"feature_image_alt"`
	FeatureImageCaption interface{} `json:"feature_image_caption"`
	PrimaryTag          *Tag        `json:"primary_tag"`
	PrimaryAuthor       *Author     `json:"primary_author"`
}

type PostParams struct {
	Title     *string `json:"title"`
	HTML      *string `json:"html,omitempty"`
	Markdown  *string `json:"markdown,omitempty"`
	Mobiledoc *string `json:"mobiledoc,omitempty"`
	Status    *string `json:"status,omitempty"`
}

type Pagination struct {
	Page  int `json:"page"`
	Limit int `json:"limit"`
	Pages int `json:"pages"`
	Total int `json:"total"`
	Next  int `json:"next"`
	Prev  int `json:"prev"`
}

type Meta struct {
	Pagination *Pagination `json:"pagination"`
}

type PostListing struct {
	Posts []Post `json:"posts"`
	Meta  *Meta  `json:"meta"`
}

func (s *PostListing) GetNextPage() int {
	if s.Meta == nil || s.Meta.Pagination == nil {
		return 0
	}
	return s.Meta.Pagination.Next
}

func (s *PostListing) GetCurrentPage() int {
	if s.Meta == nil || s.Meta.Pagination == nil {
		return 0
	}
	return s.Meta.Pagination.Page
}

func (s *PostListing) GetPageCount() int {
	if s.Meta == nil || s.Meta.Pagination == nil {
		return 0
	}
	return s.Meta.Pagination.Pages
}
