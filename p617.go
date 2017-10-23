package main

import (
	"fmt"
	"strings"
)

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func (t *TreeNode) Desc(indent int) {
	fmt.Printf("%s", strings.Repeat("\t", indent))
	fmt.Printf("%d\n", t.Val)
	if t.Left != nil {
		t.Left.Desc(indent + 1)
	}

	if t.Right != nil {
		t.Right.Desc(indent + 1)
	}
}

func mergeTrees(t1 *TreeNode, t2 *TreeNode) *TreeNode {
	if t1 == nil {
		return t2
	} else if t2 == nil {
		return t1
	} else {
		t1.Val += t2.Val
		t1.Left = mergeTrees(t1.Left, t2.Left)
		t1.Right = mergeTrees(t1.Right, t2.Right)
		return t1
	}
}

func main() {
	n1_5 := TreeNode{Val: 5}
	n1_2 := TreeNode{Val: 2}
	n1_3 := TreeNode{Val: 3, Left: &n1_5}
	n1_1 := TreeNode{Val: 1, Left: &n1_3, Right: &n1_2}

	n2_4 := TreeNode{Val: 4}
	n2_7 := TreeNode{Val: 7}
	n2_1 := TreeNode{Val: 1, Right: &n2_4}
	n2_3 := TreeNode{Val: 3, Right: &n2_7}
	n2_2 := TreeNode{Val: 2, Left: &n2_1, Right: &n2_3}

	r := mergeTrees(&n1_1, &n2_2)

	r.Desc(0)
}
