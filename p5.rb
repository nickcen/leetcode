def longest_palindrome(s)
  max_len = 0
  max_str = nil
  p = 0

  while p < s.length
    s1 = find(s, p - 1, p + 1)
    if s[p] == s[p+1]
      s2 = find(s, p - 1, p + 2)
    else
      s2 = ''
    end

    if s2.length > s1.length
      if s2.length > max_len
        max_len = s2.length
        max_str = s2
      end
    else
      if s1.length > max_len
        max_len = s1.length
        max_str = s1
      end
    end

    p += 1
  end

  max_str
end

def find(s, left, right)
  while left >= 0 && right < s.length
    if s[left] == s[right]
      left -= 1
      right += 1
    else
      break
    end
  end

  s[(left+1) .. (right - 1)]
end

# puts longest_palindrome('adbcbdc')
puts longest_palindrome('ccc')