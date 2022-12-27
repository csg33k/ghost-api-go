package providers

import "net/http"

type ContentApiProvider struct {
	url string
	key string
}

func (s ContentApiProvider) GetProviderURL() string {
	return s.url
}

func (s ContentApiProvider) Query() map[string]string {
	if s.key == "" {
		return map[string]string{}
	}
	return map[string]string{"key": s.key}

}

func (s ContentApiProvider) UpdateRequest(request *http.Request) {
	values := request.URL.Query()
	values.Add("key", s.key)
	request.URL.RawQuery = values.Encode()
	request.Header = s.Headers()

}

func (s ContentApiProvider) Headers() http.Header {
	h := http.Header{}
	h.Add("Content-Type", "application/json")
	return h
}

func NewContentProvider(url, key string) *ContentApiProvider {
	return &ContentApiProvider{
		key: key,
		url: url,
	}
}
