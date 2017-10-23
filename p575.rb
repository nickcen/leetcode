def distribute_candies(candies)
  ret = {}
  candies.each do |c|
    ret[c] = 1
  end

  [candies.length / 2, ret.keys.length].min
end

puts distribute_candies([1,1,2,3])