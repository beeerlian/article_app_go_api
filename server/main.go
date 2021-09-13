package main

import (
	"log"
	"net/http"
	"news_rest_api_gorilla_mux/handler"

	_ "github.com/go-sql-driver/mysql"
	"github.com/gorilla/mux"
)

func main() {

	router := mux.NewRouter()
	router.HandleFunc("/article", handler.ArticleHandler)
	router.HandleFunc("/category", handler.CategoyHandler)
	log.Fatal(http.ListenAndServe(":5000", router))

}
