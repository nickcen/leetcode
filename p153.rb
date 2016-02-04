def find_min(nums)
  case nums.length
  when 0
    nil
  when 1
    nums[0]
  when 2
    nums[0] > nums[1] ? nums[1] : nums[0]
  else
    nums.each_with_index do |val, idx|
      if idx < nums.length - 1
        if val > nums[idx + 1]
          return nums[idx + 1]
        end
      else
        return nums[0]
      end
    end
  end
end

puts find_min([0, 1, 2, 4, 5, 6, 7])