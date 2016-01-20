@cached = []
def is_happy(n)
  while n != 1
    if @cached[n]
      return false
    else
      c = 0
      while n >= 10
        c += (n % 10) ** 2
        n = n / 10
      end
      c += n ** 2
      @cached[n] = c
    end
    n = @cached[n]
  end
  true
end

puts is_happy(39166461)
