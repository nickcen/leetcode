def compute_area(a, b, c, d, e, f, g, h)
  o = 0

  if a <= e
    x = [a, b, c, d]
    y = [e, f, g, h]
  else
    y = [a, b, c, d]
    x = [e, f, g, h]
  end

  if x[2] <= y[0]
    o = 0 
  else
    lx = y[0]

    if x[2] <= y[2]
      rx = x[2]
    else
      rx = y[2]
    end

    if b <= f
      x = [a, b, c, d]
      y = [e, f, g, h]
    else
      y = [a, b, c, d]
      x = [e, f, g, h]
    end

    if x[3] <= y[1]
      o = 0 
    else
      ly = y[1]

      if x[3] <= y[3]
        ry = x[3]
      else
        ry = y[3]
      end

      o = (rx - lx) * (ry - ly)
    end
  end

  (c - a) * (d - b) + (g - e) * (h - f) - o
end

puts compute_area(-2, -2, 2, 2, -3, 1, -1, 3)