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
def is_symmetric(root)
  return true unless root
  is_mirror(root.left, root.right)
end

def is_mirror(left, right)
  return true if !left && !right
  return false if !left || !right
  return false if left.val != right.val 
  return is_mirror(left.left, right.right) && is_mirror(left.right, right.left)
end