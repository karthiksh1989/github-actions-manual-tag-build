package main

import (
	"fmt"
	"os"
)

var version = os.Getenv("VERSION")

func main() {

	if version == "" {
		version = "unknown"
	}

	fmt.Println(version)
}
