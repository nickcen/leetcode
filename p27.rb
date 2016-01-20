def remove_element(nums, val)
  i = -1
  j = -1
  zc = 0

  0.upto(nums.length - 1).each do |idx|
    if nums[idx] == val
      if i < j
        i = idx
        zc += 1
      else
        j = idx

        (i+1).upto(j-1).each do |idx2|
          nums[idx2 - zc] = nums[idx2]
        end
        
        zc += 1
        i = j
      end
    end
  end

  if (i+1) < nums.length
    (i+1).upto(nums.length - 1).each do |idx2|
      nums[idx2 - zc] = nums[idx2]
    end
  end

  0.upto(zc - 1).each do |i|
    nums[-1 - i] = val
  end
  nums.length - zc
end

puts remove_element([1], 1)