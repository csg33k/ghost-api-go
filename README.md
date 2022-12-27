# go-ghost

[![GoDoc](https://godoc.org/github.com/csg33k/ghost-api?status.svg)](https://godoc.org/github.com/csg33k/ghost-api)

go-ghost is a Go (golang) library for accessing the Ghost API.

This is currently a work-in-progress, built specifically to support a [Write.as](https://write.as) / [WriteFreely](https://writefreely.org) integration. But contributions (including those to support the full Ghost API) are welcome!

## Install

```text
go get -u github.com/csg33k/ghost-api
```

## Usage

Create a post:

```go
import (
	"github.com/csg33k/ghost-api"
	"github.com/csg33k/ghost-api/ghost_api"
)

func main() {
	// NewClient takes your Ghost URL and ghost_api API key
	c := ghost.NewClient("http://localhost:2368", "fc765549cb7e9d05d5ecf2c9:d3e6d27fcf782ceebea59024010aec...")
	err := admin.AddPost(c, ghost.PostParams{
		Title:    ghost.String("My Post Title"),
		Markdown: ghost.String(`This is a **test post** made with the [go-ghost](https://github.com/csg33k/ghost-api) library.`),
		Status:   ghost.String("published"),
	})
	if err != nil {
		// Handle error
	}
}
```
