def max_sub_array(nums)
  return nums.max if nums.all? {|num| num <= 0}
  max = nums[0].round
  sum = 0
  nums.each do |num|
    if sum + num > 0
      sum += num 
      max = sum if sum > max
    else
      sum = 0
    end
  end
  max
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
puts max_sub_array([0.00])
puts max_sub_array([-2, -1])