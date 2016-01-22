def product_except_self(nums)
  zero_count = nums.count(0)

  if zero_count >= 2
    [0] * nums.length
  elsif zero_count == 1
    idx = nums.index(0)
    ret = [0] * nums.length
    nums.delete(0)
    ret[idx] = nums.reduce(:*)
    ret
  else
    product = nums.reduce(:*)
    nums.map do |i|
      product / i
    end  
  end
end

puts product_except_self([1,0])