// Package admin supports interacting with the Ghost Admin API.
package admin

import (
	"fmt"

	"github.com/csg33k/ghost-api"
)

type Client struct {
	ghost.Client
}

func getC(c *ghost.Client) *Client {
	return &Client{*c}
}

func (c *Client) endpoint(resource string) string {
	return fmt.Sprintf("/%s/api/admin/%s/", c.GhostPath, resource)
}

func (c *Client) endpointForID(resource, id string) string {
	return fmt.Sprintf("/%s/api/admin/%s/%s/", c.GhostPath, resource, id)
}

func (c *Client) endpointForSlug(resource, slug string) string {
	return fmt.Sprintf("/%s/api/admin/%s/slug/%s/", c.GhostPath, resource, slug)
}
