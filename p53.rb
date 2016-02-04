def max_sub_array(nums)
  nums = nums.delete(0)
  nums = merge(nums)

  nums.shift if nums[0] and nums[0] < 0
  nums.pop if nums[-1] and nums[-1] < 0

  return 0 if nums.length == 0
  return nums[1] if nums.length == 1

   
end

def merge(nums)
  ret = []
  sum = 0

  nums.each do |num|
    if sum == 0
      sum = num 
    elsif sum > 0 and num > 0
      sum += num
    elsif sum < 0 and num < 0
      sum -= num
    else 
      ret << sum
      sum = num
    end
  end
  ret << sum if sum != 0
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])