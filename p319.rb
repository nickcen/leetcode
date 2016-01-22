require 'mathn'
def bulb_switch(n)
  return 0 if n == 0

  bulbs = [1] * n

  2.upto(n).each do |n|
    c = n.prime_division.reduce(1) do |memo, pair|
      memo * (1 + pair[1])
    end
    
    if (c - 1) % 2 == 1
      bulbs[n - 1] = 0
    end
  end

  bulbs
end

puts bulb_switch(100000)