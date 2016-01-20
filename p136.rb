def single_number(nums)
  map = {}
  nums.each do |c|
    if map.has_key?(c)
      map.delete(c)
    else
      map[c] = 1
    end
  end

  map.keys[0]
end

puts single_number([1])