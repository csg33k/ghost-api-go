// Package ghost provides the binding for Ghost APIs
package ghost

import (
	"bytes"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"strings"
	"time"

	"github.com/golang-jwt/jwt"
	"github.com/mitchellh/mapstructure"
)

type Client struct {
	URL       string
	Key       string
	GhostPath string
	UserAgent string
	client    *http.Client
}

// defaultHTTPTimeout is the default http.Client timeout.
const defaultHTTPTimeout = 10 * time.Second

// NewClient creates a new API client.
func NewClient(url, key string) *Client {
	httpClient := &http.Client{Timeout: defaultHTTPTimeout}
	return &Client{
		URL:       url,
		Key:       key,
		GhostPath: "ghost",
		client:    httpClient,
	}
}

func (c *Client) Request(method, path string, data interface{}) (map[string][]interface{}, error) {
	var b *bytes.Buffer
	if method == http.MethodPost {
		b = &bytes.Buffer{}
		json.NewEncoder(b).Encode(data)
	}
	r, err := c.buildRequest(method, path, b)
	if err != nil {
		return nil, err
	}

	res, err := c.doRequest(r)
	// Check for transport errors
	if err != nil {
		return nil, err
	}
	// Check for application errors
	if em, ok := res["errors"]; ok {
		e := Error{}
		err = mapstructure.Decode(em[0], &e)
		if err != nil {
			return nil, err
		}
		return nil, e
	}
	return res, nil
}

func (c *Client) buildRequest(method, path string, data io.Reader) (*http.Request, error) {
	url := fmt.Sprintf("%s%s", c.URL, path)
	r, err := http.NewRequest(method, url, data)
	if err != nil {
		return nil, fmt.Errorf("buildRequest: %v", err)
	}
	c.prepareRequest(r)

	return r, nil
}

func (c *Client) doRequest(r *http.Request) (map[string][]interface{}, error) {
	resp, err := c.client.Do(r)
	if err != nil {
		return nil, fmt.Errorf("doRequest: %v", err)
	}
	defer resp.Body.Close()

	env := map[string][]interface{}{}
	err = json.NewDecoder(resp.Body).Decode(&env)
	if err != nil {
		return nil, err
	}

	return env, nil
}

func (c *Client) prepareRequest(r *http.Request) error {
	// r.Header.Add("User-Agent", ua)
	var err error
	var token string
	r.Header.Add("Content-Type", "application/json")
	if c.Key != "" {
		token, err = c.generateJWT()
		if err == nil {
			// TODO: return error
			r.Header.Add("Authorization", "Ghost "+token)
		}
	}
	return err
}

func (c *Client) endpointForID(api, resource, id string) string {
	return fmt.Sprintf("/%s/api/%s/%s/%s/", c.GhostPath, api, resource, id)
}

func (c *Client) endpointForSlug(api, resource, slug string) string {
	return fmt.Sprintf("/%s/api/%s/%s/slug/%s/", c.GhostPath, api, resource, slug)
}

func (c *Client) generateJWT() (string, error) {
	keyParts := strings.Split(c.Key, ":")
	if len(keyParts) != 2 {
		return "", fmt.Errorf("invalid Client.Key format")
	}
	id := keyParts[0]
	rawSecret := []byte(keyParts[1])
	secret := make([]byte, hex.DecodedLen(len(rawSecret)))
	_, err := hex.Decode(secret, rawSecret)
	if err != nil {
		return "", err
	}

	now := time.Now()
	token := jwt.New(jwt.SigningMethodHS256)
	token.Header["kid"] = id
	secret, err = hex.DecodeString(string(rawSecret))
	if err != nil {
		return "", errors.New("unable to decode secret")
	}
	claim := token.Claims.(jwt.MapClaims)
	claim["aud"] = "/admin/"
	claim["exp"] = now.Add(5 * time.Minute).Unix()
	claim["iat"] = now.Unix()

	return token.SignedString(secret)
}

// String returns a pointer to the string value passed in.
func String(v string) *string {
	return &v
}

// Bool returns a pointer to the bool value passed in.
func Bool(v bool) *bool {
	return &v
}
