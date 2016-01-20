def my_atoi(str)
  i = str.to_i
  if i >= 2147483647
    2147483647
  elsif i <= -2147483648
    -2147483648
  else
    i
  end
end