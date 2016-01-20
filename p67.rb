def add_binary(a, b)
  if a.length < b.length
    a, b = b, a
  end

  inc = nil
  result = []
  a.reverse.chars.zip(b.reverse.chars).each do |i, j|
    case [i, j, inc].count('1')
    when 0
      result << '0'
      inc = nil
    when 1
      result << '1'
      inc = nil
    when 2
      result << '0'
      inc = '1'
    when 3
      result << '1'
      inc = '1'
    end
  end

  result << '1' if inc

  result.reverse.join
end