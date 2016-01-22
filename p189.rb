def rotate(nums, k)
  1.upto(k).each do |i|
    nums.unshift(nums.pop)
  end
  nums
end

puts rotate([1,2,3,4,5,6,7], 3)