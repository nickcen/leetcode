class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def sorted_array_to_bst(nums)
  return nil if nums.length == 0
  return TreeNode.new(nums[0]) if nums.length == 1
  
  idx = nums.length / 2
  root = TreeNode.new(nums[idx])
  balance_it(root, nums[0..idx-1], nums[idx+1..-1])
end

def balance_it(root, lefts, rights)
  root.left = sorted_array_to_bst(lefts)
  root.right = sorted_array_to_bst(rights)

  root
end

puts sorted_array_to_bst([1,2,3,4,5,6,7])