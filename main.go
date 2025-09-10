package main

import (
    "fmt"
    "runtime"
    "net/http"
    "log"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hellow from a %s (%s) container!", runtime.GOOS, runtime.GOARCH)
    })
    log.Fatal(http.ListenAndServe(":8080", nil))
}
