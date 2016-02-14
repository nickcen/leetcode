# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length

  arr = []
  n.times do |_|
    arr << [0] * n
  end

  0.upto(n - 1).each do |y|
    0.upto(n - 1).each do |x|
      arr[x][n-1-y] = matrix[y][x]
    end
  end
  arr

  0.upto(n - 1).each do |y|
    0.upto(n - 1).each do |x|
      matrix[y][x] = arr[y][x]
    end
  end
end

def print_matrix(n)
  n.each do |r|
    puts r.join("\t")
  end
end

print_matrix [[1,2],[3,4]]
print_matrix rotate([[1,2],[3,4]])