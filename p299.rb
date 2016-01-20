def get_hint(secret, guess)
  b = 0
  c = 0

  s_r = []
  g_r = []
  secret.chars.zip(guess.chars).each do |i, j|
    if i == j
      b += 1
    else
      s_r << i 
      g_r << j
    end
  end
  s_r.each do |i|
    idx = g_r.index(i)

    if idx
      c += 1
      g_r.delete_at(idx)
    end
  end
  "#{b}A#{c}B"
end