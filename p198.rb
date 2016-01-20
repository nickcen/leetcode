# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  rob_it(nums, {})
  
end

def rob_it(nums, cached)
  return 0 if !nums || nums.length == 0
  return nums[0] if nums.length == 1

  return cached[nums.length] if cached.has_key?(nums.length)

  cached[nums.length] = [nums[0] + rob_it(nums[2..-1], cached), rob_it(nums[1..-1], cached)].max
  return cached[nums.length]
end

# puts rob([183,219,57,193,94,233,202,154,65,240,97,234,100,249,186,66,90,238,168,128,177,235,50,81,185,165,217,207,88,80,112,78,135,62,228,247,211])
puts rob([1,1])