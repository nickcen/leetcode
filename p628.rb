def maximum_product(nums)
  nums.sort!

  val1 = nums[-1] * nums[-2] * nums[-3]
  val2 = nums[0] * nums[1] * nums[-1]

  val1 > val2 ? val1 : val2
end

puts maximum_product([1,2,3,4])