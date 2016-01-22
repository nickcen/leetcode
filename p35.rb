def search_insert(nums, target)
  nums.each_with_index do |o, i|
    return i if o == target
    return i if o > target
  end
  return nums.length
end

puts search_insert([1,3,5,6], 5)
puts search_insert([1,3,5,6], 2)