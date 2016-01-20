# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  0.upto(8).each do |x|
    0.upto(8).each do |y|
      return false unless is_valid_cell(board, x, y)
    end
  end
  true
end

def is_valid_cell(board, x, y)
  xs = 0.upto(8).map{|i| '.' == board[x][i] ? nil : board[x][i]}.compact
  return false unless xs.uniq.length == xs.length

  ys = 0.upto(8).map{|i| '.' == board[i][y] ? nil : board[i][y]}.compact
  return false unless ys.uniq.length == ys.length

  xg = x / 3
  yg = y / 3

  zs = []
  0.upto(2).each do |i|
    0.upto(2).each do |j|
      zs << ('.' == board[xg * 3 + i][yg * 3 + j] ? nil : board[xg * 3 + i][yg * 3 + j])
    end
  end
  zs.compact!
  return false unless zs.uniq.length == zs.length
  true
end