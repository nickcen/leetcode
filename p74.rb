def search_matrix(matrix, target)
  h = matrix.length
  w = matrix[0].length

  0.upto(h - 1).each do |y|
    return true if matrix[y][0] == target

    if matrix[y][0] > target
      return false if y == 0
      0.upto(w - 1).each do |x|
        return true if matrix[y-1][x] == target
      end
      return false
    end
  end

  0.upto(w - 1).each do |x|
    return true if matrix[h-1][x] == target
  end
  return false
end

puts search_matrix([[1, 3]], 3)