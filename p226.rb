def invert_tree(root)
  if root 
    tmp = root.left
    root.left = root.right
    root.right = tmp
    invert_tree(root.left)
    invert_tree(root.right)
  end

  root
end