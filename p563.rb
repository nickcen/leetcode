class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

n1 = TreeNode.new(1)
n2 = TreeNode.new(2)
n3 = TreeNode.new(3)

n1.left = n2
n1.right = n3

def find_tilt(root)
  return 0 unless root
  accu = []
  traverse(root, accu)
  accu.reduce(:+)
end

def traverse(node, accu)
  val = node.val

  l = node.left ? traverse(node.left, accu) : 0
  r = node.right ? traverse(node.right, accu) : 0
  accu << (l - r).abs

  val + l + r
end

puts find_tilt(n1)