package test_common

import (
	"github.com/stretchr/testify/assert"
	"io"
	"os"
	"strings"
	"testing"
)

type CommonCredentials struct {
	GhostHost  string
	UserName   string
	Password   string
	ContentKey string
	AdminKey   string
}

const (
	defaultHost       = "http://localhost:2368"
	defaultUser       = "ghost_api@testing.com"
	defaultPassword   = "Secret12345678"
	defaultContentKey = "18e95ea80dcbf2a8ff834ee5a8"
	defaultAdminKey   = "63a872b10abef80001ecfd8b:15c0404660e3c6bd12a62c05672d69804f175818c33fe633500fd05f6c70bb60"
)

func ReadLocalFile(t *testing.T, testPathResource string) []byte {
	cwd, _ := os.Getwd()
	//Reset parent directory
	if strings.Contains(cwd, "ghost_api") {
		err := os.Chdir("..")
		assert.Nil(t, err)
	}
	f, err := os.Open(testPathResource)
	assert.Nil(t, err)
	data, err := io.ReadAll(f)
	assert.Nil(t, err)
	return data
}

func IsIntegration() bool {
	val := os.Getenv("INTEGRATION")
	return val == "1"

}

func NewCommon() CommonCredentials {
	c := CommonCredentials{
		UserName:   loadEnvValue("ghost_user", defaultUser),
		Password:   loadEnvValue("ghost_pass", defaultPassword),
		ContentKey: loadEnvValue("ghost_content_key", defaultContentKey),
		AdminKey:   loadEnvValue("ghost_admin_key", defaultAdminKey),
		GhostHost:  loadEnvValue("ghost_host", defaultHost),
	}

	return c
}

func loadEnvValue(key, defaultVal string) string {
	val := os.Getenv(key)
	if val == "" {
		return defaultVal
	}

	return val

}
