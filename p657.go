package main

import "fmt"

func judgeCircle(moves string) bool {
	x, y := 0, 0

	for _, v := range moves {
		switch v {
		case 'U':
			y--
		case 'D':
			y++
		case 'L':
			x--
		case 'R':
			x++
		}
	}
	return x == 0 && y == 0
}

func main() {
	fmt.Println(judgeCircle("LL"))
}
