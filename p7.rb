def reverse(x)
  maximun = 2147483648

  is_neg = x < 0 ? -1 : 1

  r = x.abs.to_s.reverse.to_i

  if r > maximun
    return 0
  else
    is_neg * r
  end
end

puts reverse(1534236469)