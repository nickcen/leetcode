def unique_paths(m, n)
  find_solution(m, n, {"1_1" => 1})
end

def find_solution(m, n, lookups)
  key = "#{m}_#{n}"
  unless lookups.has_key?(key)
    s1 = 0
    s2 = 0
    s1 = find_solution(m - 1, n, lookups) if m > 1
    s2 = find_solution(m, n - 1, lookups) if n > 1
    lookups[key] = s1 + s2
  end
  lookups[key]
end

puts unique_paths(3, 3)