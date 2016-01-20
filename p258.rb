def add_digits(num)
  while num >= 10
    num = num.to_s.chars.map(&:to_i).reduce(&:+)
  end
  num
end

puts add_digits(1234)
