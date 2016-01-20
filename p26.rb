# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?
  i = 0

  0.upto(nums.length - 1).each do |idx|
    if nums[i] != nums[idx]
      i += 1
      nums[i] = nums[idx]
    end
  end

  i + 1
end
