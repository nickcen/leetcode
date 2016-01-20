# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  c = 0 
  while n / 5 > 0
    c += n / 5
    n = n / 5
  end
  c
end

puts trailing_zeroes(1808548329)
# puts 1.upto(125).reduce(&:*)