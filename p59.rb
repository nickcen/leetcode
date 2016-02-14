def generate_matrix(n)
  arr = []
  n.times do |_|
    arr << [0] * n
  end

  initial_value = 1
  0.upto(n/2).each do |i|
    initial_value = fill(arr, i, i, n - i - 1 , n - i - 1, initial_value)
  end
  
  arr
end

def fill(arr, x1, y1, x2, y2, val)
  if x1 == x2
    arr[y1][x1] = val
  else
    x1.upto(x2).each do |x|
      arr[y1][x] = val
      val += 1
    end

    (y1 + 1).upto(y2 - 1).each do |y|
      arr[y][x2] = val
      val += 1
    end

    x2.step(x1, -1).each do |x|
      arr[y2][x] = val
      val += 1
    end

    (y2 - 1).step(y1 + 1, -1).each do |y|
      arr[y][x1] = val
      val += 1
    end

    val
  end
end

def print_matrix(n)
  n.each do |r|
    puts r.join("\t")
  end
end

print_matrix generate_matrix(4)