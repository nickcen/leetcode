require 'prime'

def count_primes(n)
  Prime.each(n-1).map{|v| v}.size
end

puts count_primes(2)