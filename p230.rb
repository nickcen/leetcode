class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def kth_smallest(root, k)
  values = []
  visit(root, values, k)
  values[-1]
end

def visit(root, values, limit)
  visit(root.left, values, limit) if values.length < limit && root.left
  values << root.val if values.length < limit
  visit(root.right, values, limit) if root.right && values.length < limit
end

r = TreeNode.new(2)
l = TreeNode.new(1)
r.left = l

puts kth_smallest(r, 1)