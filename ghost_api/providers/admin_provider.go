package providers

import (
	"encoding/hex"
	"errors"
	"fmt"
	"github.com/golang-jwt/jwt"
	"net/http"
	"strings"
	"time"
)

type AdminApiProvider struct {
	url string
	key string
}

func (s AdminApiProvider) GetProviderURL() string {
	return s.url
}

func (s AdminApiProvider) Query() map[string]string {
	return map[string]string{}

}

func (s AdminApiProvider) Headers() http.Header {
	h := http.Header{}
	h.Add("Content-Type", "application/json")
	var err error
	var token string

	if s.key != "" {
		token, err = s.generateJWT()
		if err == nil {
			h.Add("Authorization", "Ghost "+token)
		}
	}
	return h
}

func (s AdminApiProvider) UpdateRequest(request *http.Request) {
	request.Header = s.Headers()
}

func (c *AdminApiProvider) generateJWT() (string, error) {
	keyParts := strings.Split(c.key, ":")
	if len(keyParts) != 2 {
		return "", fmt.Errorf("invalid Client.AdminKey format")
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

func NewAdminProvider(url, key string) *AdminApiProvider {
	return &AdminApiProvider{
		url: url,
		key: key,
	}
}
