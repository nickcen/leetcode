class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def right_side_view(root)
  return [] if !root

  levels = []
  visit(root, 0, levels)
  ret = []
  levels.each do |l|
    if l
      ret << l.pop
    end
  end
  ret
end

def visit(node, cur_level, levels)
  visit(node.left, cur_level + 1, levels) if node.left
  levels[cur_level] = [] unless levels[cur_level]
  levels[cur_level] << node.val
  visit(node.right, cur_level + 1, levels) if node.right
end

nodes = []
1.upto(5).each do |idx|
  nodes[idx] = TreeNode.new(idx)
end

nodes[1].left = nodes[2]
nodes[1].right = nodes[3]
nodes[2].right = nodes[5]
nodes[3].right = nodes[4]

puts right_side_view(nodes[1])