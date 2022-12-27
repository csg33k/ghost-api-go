package rest

import "fmt"

const (
	prefix = "ghost"
)

func EndpointForID(api, resource, id string) string {
	return fmt.Sprintf("/%s/api/%s/%s/%s/", prefix, api, resource, id)
}

func EndpointForSlug(api, resource, slug string) string {
	return fmt.Sprintf("/%s/api/%s/%s/slug/%s/", prefix, api, resource, slug)
}

func EndPoint(api, resource string) string {
	return fmt.Sprintf("%s/api/%s/%s/", prefix, api, resource)

}
