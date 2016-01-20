def title_to_number(s)
  m = s.codepoints.reduce(0){ |memo, c|  memo = (memo + c - 64)*26 }
  m / 26
end

puts title_to_number('A')