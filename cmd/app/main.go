package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Print("Hello, new project \"GreenBank\"!!!")

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, new project \"GreenBank\"!!!")
	})

	http.ListenAndServe(":3537", nil)
}
