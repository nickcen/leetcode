def word_pattern(pattern, str)
  f_maps = {}
  b_maps = {}

  ps = pattern.chars
  ss = str.split

  return false if ps.length != ss.length
  ps.zip(ss).each do |i, j|
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