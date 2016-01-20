def move_zeroes(nums)
  i = -1
  j = -1
  zc = 0

  0.upto(nums.length - 1).each do |idx|
    if nums[idx] == 0
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
    nums[-1 - i] = 0
  end
  
  nums
end

puts move_zeroes([4,2,4,0,0,3,0,5,1,0])