package main

import (
	"app/pkg/examplepackage"
	"fmt"
)

func main() {
	fmt.Println("Start serving")
	examplepackage.ServeSomething()
}
