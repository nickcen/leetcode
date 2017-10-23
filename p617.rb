class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end

  def to_s
    "#{@val}[#{@left}#{@right}]"
  end
end

t11 = TreeNode.new(1)
t13 = TreeNode.new(3)
t12 = TreeNode.new(2)
t15 = TreeNode.new(5)

t11.left = t13
t11.right = t12
t13.left = t15

t22 = TreeNode.new(2)
t21 = TreeNode.new(1)
t23 = TreeNode.new(3)
t24 = TreeNode.new(4)
t27 = TreeNode.new(7)

t22.left = t21
t22.right = t23
t21.right = t24
t23.right = t27

puts t11

def merge_trees(t1, t2)

end