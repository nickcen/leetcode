def preorder_traversal(root)
  result = []
  visit(root, result)
  result
end

def visit(node, result)
  if node
    result << node.val
    visit(node.left, result) if node.left
    visit(node.right, result) if node.right
  end
end