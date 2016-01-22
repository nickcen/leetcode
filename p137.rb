def single_number(nums)
  maps = {}
  nums.each do |i|
    unless maps.has_key?(i)
      maps[i] = 0
    end
    maps[i] += 1
  end

  maps.each_pair do |k, v|
    return k if v == 1
  end
end