def combination_sum3(k, n)
  all_sol = {}
  max_n = n > 9 ? 10 : n + 1
  solve(k, n, max_n, all_sol)
  all_sol.count
end

def solve(k, n, max_n, all_sol)
  key = "#{n}_#{k}"

  unless all_sol.has_key?(key)
    val = 1
    2.upto(max_n).each do |gap|
      1.upto( n / gap).each do |c|
        val += solve(k - 1, n - c * gap, gap, all_sol)
      end
    end
    all_sol[key] = val
  end 
  all_sol[key]
end

puts combination_sum3(3, 7)