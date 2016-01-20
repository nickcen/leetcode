# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  ('%032b' % n).each_char do |c|
    if c == '1'
      count += 1
    end
  end
  count
end

puts hamming_weight(11)