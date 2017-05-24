package main

import (
	"fmt"
)

func exec() string {
	return "Test Exec"
}

func main() {
	fmt.Println("circleci 2.0 run")
	exec()
}
