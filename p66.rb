# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  jinwei = 1
  (digits.length - 1).downto(0).each do |idx|
    if jinwei + digits[idx] >= 10
      digits[idx] = jinwei + digits[idx] - 10
      jinwei = 1
    else
      jinwei = 0
      digits[idx] += 1
      break
    end
  end

  if jinwei == 1
    digits = [1].concat(digits)
  end
  digits
end

puts plus_one([1,2,3])