def is_palindrome(s)
  r = s.chars.delete_if {|c| c !~ /\w/}.map(&:downcase)
  r.reverse == r
end

puts is_palindrome("0P")