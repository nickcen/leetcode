def convert_to_title(n)
  ret = []
  while n > 26
    c = n % 26
    n = n / 26

    if c == 0
      n -= 1
      c = 26
    end
    ret << (64 + c).chr
  end

  ret << (64 + n).chr

  ret.reverse.join
end