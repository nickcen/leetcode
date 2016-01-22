def inorder_traversal(root)
  result = []
  visit(root, result)
  result
end

def visit(node, result)
  if node
    visit(node.left, result) if node.left
    result << node.val
    visit(node.right, result) if node.right
  end
end