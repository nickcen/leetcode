def is_power_of_three(n)
  while n >= 3
    return false if n % 3 != 0
    n = n / 3
  end 

  if n == 1
    true
  else
    false
  end
end

puts is_power_of_three(27)