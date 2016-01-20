@cached = {}
def climb_stairs(n)
  if n == 1
    1
  elsif n == 2
    2
  else
    @cached[n-1] = climb_stairs(n - 1) if @cached[n-1] == nil
    @cached[n-2] = climb_stairs(n - 2) if @cached[n-2] == nil  
    @cached[n-1] + @cached[n-2]
  end
end

puts climb_stairs(38)