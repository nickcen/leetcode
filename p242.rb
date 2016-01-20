def is_anagram(s, t)
  return false if s.length != t.length

  s = s.chars.sort
  t = t.chars.sort

  0.upto(s.length - 1).each do |idx|
    return false if s[idx] != t[idx]
  end
  
  return true
end

puts is_anagram("aa","a")