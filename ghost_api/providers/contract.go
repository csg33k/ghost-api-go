package providers

import "net/http"

// To use the API Helpers, all APIs must implement this interface
type APIProvider interface {
	GetProviderURL() string
	UpdateRequest(request *http.Request)
	Headers() http.Header
	Query() map[string]string
}
