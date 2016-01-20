class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def binary_tree_paths(root)
  paths = []
  if root
    path(root, [], paths)
  else
    []
  end
  paths
end

def path(node, parents, paths)
  parents = parents + [node.val]
  if !node.left && !node.right
    paths << parents.join('->')
  else
    path(node.left, parents, paths) if node.left
    path(node.right, parents, paths) if node.right  
  end
end

root = TreeNode.new(1)
left = TreeNode.new(2)

root.left = left

puts binary_tree_paths(root)