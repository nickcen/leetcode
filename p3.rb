# encoding:utf-8

def length_of_longest_substring(s)
  return 0 if s.empty?

  max_length = 1
  max_str = nil

  head = 0
  tail = 1
  while tail < s.length
    p = s[head...tail].index(s[tail])
    if p
      head += (p + 1)
    end
    tail += 1

    if tail - head > max_length
      max_length = tail - head
      max_str = s[head...tail]
    end
  end
  max_length
end

puts length_of_longest_substring('abcabcbb')
puts length_of_longest_substring('bbbbb')
puts length_of_longest_substring('c')
puts length_of_longest_substring('au')