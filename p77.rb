def combine(n, k)
  (1..n).to_a.combination(k).to_a
end

puts "#{combine(4,2)}"