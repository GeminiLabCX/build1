package main

import (
	"fmt"
	"os"
	"time"
)

var (
	buildstamp string = "not set"
	githash    string = "not set"
	goversion  string = "not set"
)

func main() {
	pwd, _ := os.Getwd()
	host, _ := os.Hostname()
	fmt.Printf("šæ: Hello Build!\nš»: %s\nš: %s\nā°: %s\n", host, pwd, time.Now().Format(time.RFC3339))
	fmt.Printf("š: %s\n", githash)
	fmt.Printf("š: %s\n", buildstamp)
	fmt.Printf("š: %s\n", goversion)
}
