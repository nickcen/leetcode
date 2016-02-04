require 'prime'
def bulb_switch(n)
  return 0 if n == 0

  n - Prime.each(n).count
end

puts bulb_switch(10000000)
# puts bulb_switch(3)