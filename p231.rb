# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n == 0

  while n != 1
    if n % 2 == 0
      n = n / 2
    else
      return false
    end
  end
  return true
end