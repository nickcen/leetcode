def combination_sum3(k, n)
  all_sol = []
  solve(n, k, 1, [], all_sol)
  all_sol.uniq
end

def solve(remain, k, n, solution, all_sols)
  return if remain > 9 * k
  return if remain < n
  if k == 1
    if remain >= n && remain <= 9
      solution << remain 
      all_sols << solution.dup
      solution.delete(remain)
    end
    return
  end
  
  n.upto(9).each do |i|
    solution << i
    solve(remain - i, k - 1, i + 1, solution, all_sols)
    solution.delete(i)

    solve(remain, k, i + 1, solution, all_sols)
  end
end

ret = combination_sum3(3, 9)
puts "#{ret}"