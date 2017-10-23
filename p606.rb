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
n4 = TreeNode.new(4)

n2.left = n4
n1.left = n2
n1.right = n3

def tree2str(t)
  return '' unless t

  ret = []
  traverse(t, ret)
  ret[1..-2].join
end

def traverse(n, ret)
  ret << '('
  ret << n.val

  if n.left or n.right
    if n.left
      traverse(n.left, ret) 
    else
      ret << '('
      ret << ')'
    end
    
    traverse(n.right, ret) if n.right 
  end

  ret << ')'
end

puts tree2str(n1)