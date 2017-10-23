package main

import (
	"fmt"
	"strconv"
)

func calPoints(ops []string) int {
	datas := make([]int, len(ops))

	p_w, p_r := 0, 0

	for ; p_r < len(ops); p_r++ {
		switch ops[p_r] {
		case "C":
			p_w--
		case "D":
			datas[p_w] = datas[p_w-1] * 2
			p_w++
		case "+":
			datas[p_w] = datas[p_w-1] + datas[p_w-2]
			p_w++
		default:
			datas[p_w], _ = strconv.Atoi(ops[p_r])
			p_w++
		}
	}

	sum := 0

	for i := 0; i < p_w; i++ {
		sum += datas[i]
	}

	return sum
}

func main() {
	ops := []string{"5", "-2", "4", "C", "D", "9", "+", "+"}
	sum := calPoints(ops)
	fmt.Printf("sum is %d\n", sum)
}
