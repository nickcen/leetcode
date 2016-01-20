def is_isomorphic(s, t)
  f_maps = {}
  b_maps = {}
  s.chars.zip(t.chars).each do |i, j|
    if f_maps.has_key?(i)
      return false if f_maps[i] != j
    else
      f_maps[i] = j
    end

    if b_maps.has_key?(j)
      return false if b_maps[j] != i
    else
      b_maps[j] = i
    end
  end

  true
end