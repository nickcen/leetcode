def num_trees(n)
  count(n, {0 => 1, 1 => 1, 2 => 2})
end

def count(n, result)
  t = n - 1

  total = 0

  0.upto(t).each do |i|
    if result.has_key?(i)
      result[i]
    else
      v = count(i, result)
      result[i] = v
    end

    if result.has_key?(t - i)
      result[t - i]
    else
      v = count(t - i, result)
      result[t - i] = v
    end

    total += result[i] * result[t - i]
  end
  total
end

puts num_trees(3)