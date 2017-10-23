# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {Float[]}
def average_of_levels(root)
  return [] unless root

  queues = [root]

  ret = []

  while !queues.empty?
    n_q = []
    val = 0

    queues.each do |node|
      val += node.val
      n_q << node.left if node.left
      n_q << node.right if node.right
    end

    ret << val * 1.0 / queues.length
    queues = n_q
  end

  ret
end

root = TreeNode.new(3)
n9 = TreeNode.new(9)
n20 = TreeNode.new(20)
n15 = TreeNode.new(15)
n7 = TreeNode.new(7)

root.left = n9
root.right =n20
n20.left = n15
n20.right = n7

puts "#{average_of_levels(root)}"