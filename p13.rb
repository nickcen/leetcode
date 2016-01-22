def roman_to_int(s)
  maps = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}

  value = 0

  idx = 0
  while idx < s.length
    c = s[idx]

    if 1 + idx < s.length
      n = s[idx + 1]
    else
      n = nil
    end

    if (c == 'I' and (n == 'V' || n == 'X')) || (c == 'X' and (n == 'L' || n == 'C')) || (c == 'C' and (n == 'D' || n == 'M'))
      value += maps[n]
      value -= maps[c]
      idx += 2
    else
      value += maps[c]
      idx += 1
    end
  end

  value
end

puts roman_to_int('CCVII')
puts roman_to_int('MLXVI')
puts roman_to_int('MCMIV')