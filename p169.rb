def majority_element(nums)
  max_c = 0
  max_n = nil

  nums.reduce({}) do |memo, n|
    unless memo.has_key?(n)
      memo[n] = 0
    end
    memo[n] += 1

    if memo[n] > max_c
      max_c = memo[n]
      max_n = n
    end
    memo
  end

  max_n
end