def sort_colors(nums)
  nums.sort do |a, b|
    a <=> b
  end
end

ret = sort_colors([1,0])
puts "#{ret}"
