# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  counts = {}

  nums.each_with_index do |item, idx|
    unless counts.has_key?(item)
      counts[item] = [idx]
    else
      counts[item] << idx
    end
  end

  counts.each_pair do |_, idxs|
    if idxs.length >= 2
      0.upto(idxs.length - 2).each do |i|
        return true if idxs[i+1] - idxs[i] <= k
      end
    end
  end

  return false
end