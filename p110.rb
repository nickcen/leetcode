# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}

def is_balanced(root)
  return true unless root

  is_balanced(root.left) && is_balanced(root.right) && (depth(root.left, 1) - depth(root.right, 1)).abs <= 1
end

def depth(node, parent_depth)
  unless node
    parent_depth 
  else
    [depth(node.left, parent_depth + 1), depth(node.right, parent_depth + 1)].max
  end
end

