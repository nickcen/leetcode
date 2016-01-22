def missing_number(nums)
  values = nums.sort
  values.each_with_index do |obj, idx|
    if obj != idx
      return idx
    end
  end

  return nums.length
end

puts missing_number([1])