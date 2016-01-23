def max_sub_array(nums)
  nums = nums.delete(0)
  nums = merge(nums)

  nums.shift if nums[0] and nums[0] < 0
  nums.pop if nums[-1] and nums[-1] < 0

  return 0 if nums.length == 0
  return nums[1] if nums.length == 1

  rnums = right_merge(nums)
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

def right_merge(nums)
  ret = []
  
  1.upto(nums.length - 1, 2).each do |idx|
    if idx + 1 < nums.length
      if nums[idx] + nums[idx+1] > 0
        ret << nums[idx] + nums[idx+1]
      else 
        ret << nil
      end
    else
      ret << nums[idx]
    end
  end
end

def left_merge(nums)
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])