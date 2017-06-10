def array_pair_sum(nums)
  ns = nums.sort
  ret = 0 

  0.step(ns.length - 1, 2).each do |i|
    ret += ns[i]
  end

  ret
end

puts array_pair_sum([1,2,3,2])