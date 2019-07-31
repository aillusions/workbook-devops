package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	var x, str = functionName(44)
	i, err := strconv.Atoi(str)
	if err != nil {
		fmt.Println(err)
		os.Exit(2)
	}

	fmt.Println(x + i)
}

func functionName(arg1 int) (int, string) {

	var variable int = 1000
	const constant string = "123-345"
	fmt.Println("Hello World", arg1, variable, constant)

	return 42, "33"
}
