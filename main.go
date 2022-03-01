package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		podName := os.Getenv("MY_POD_NAME")
		fmt.Fprintf(w, "Hello %q!", podName)
	})

	log.Println("Listening on localhost:8080")

	log.Fatal(http.ListenAndServe(":8080", nil))
}
