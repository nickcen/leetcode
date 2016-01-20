class Node
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end

end

def max_depth(root)
  depth(root, 0)
end

def depth(node, current_depth)
  if node
    puts node.val
    [depth(node.left, current_depth + 1), depth(node.right, current_depth + 1)].max
  else
    current_depth
  end
end

r = Node.new('a')
r.left = Node.new('b')
r.right = Node.new('c')
r.left.left = Node.new('d')
r.left.right = Node.new('e')

puts max_depth(r)