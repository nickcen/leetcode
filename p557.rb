def reverse_words(s)
  s.split(' ').map(&:reverse).join(' ')
end

puts reverse_words("Let's take LeetCode contest")