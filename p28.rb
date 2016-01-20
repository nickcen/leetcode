def str_str(haystack, needle)
  l = needle.length
  
  0.upto(haystack.length - l).each do |idx|
    return idx if haystack[idx, l] == needle
  end
  return -1
end

puts str_str('abc', 'a')