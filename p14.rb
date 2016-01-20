def longest_common_prefix(strs)
  case strs.length
  when 0
    ''
  when 1
    strs[0]
  else
    ret = strs[1..-1].inject(strs[0]) do |memo, value|
      p = []
      memo.chars.zip(value.chars).each do |i, j|
        if i == j
          p << i
        else
          break
        end
      end
      memo = p.join
    end
  end
end