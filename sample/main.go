package main

import (
	"fmt"
	"os"

	"github.com/csg33k/ghost-api"
	"github.com/csg33k/ghost-api/admin"
)

func main() {
	if len(os.Args) != 3 {
		fmt.Fprintf(os.Stderr, "usage: sample GHOST_URL API_KEY\n")
		os.Exit(1)
	}

	url := os.Args[1]
	apiKey := os.Args[2]

	c := ghost.NewClient(url, apiKey)
	err := admin.AddPost(c, ghost.PostParams{
		Title:    ghost.String("Posting via Go"),
		Markdown: ghost.String(`This is a **test post** made with the [go-ghost](https://github.com/csg33k/ghost-api) library.`),
		Status:   ghost.String("published"),
	})
	if err != nil {
		fmt.Printf("AddPost: %v\n", err)
	}
}
