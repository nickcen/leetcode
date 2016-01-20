# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.length == 0
  return ["#{nums[0]}"] if nums.length == 1

  ret = []

  l = 0

  nums.each_with_index do |v, idx|
    if idx != 0
      if v - nums[idx - 1] != 1
        if l == idx - 1
          ret << "#{nums[l]}"
        else
          ret << "#{nums[l]}->#{nums[idx - 1]}"
        end
        l = idx
      end
    end
  end

  if l == nums.length - 1
    ret << "#{nums[l]}"
  else
    ret << "#{nums[l]}->#{nums[- 1]}"
  end

  ret
end

puts "#{summary_ranges([0,1,2,4,5,7])}"