def contains_duplicate(nums)
  Set.new(nums).length != nums.length
end