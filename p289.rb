def game_of_life(board)
  h = board.length
  w = board[0].length

  arr = []
  h.times do |_|
    arr << [0] * w
  end

  0.upto(h-1).each do |y|
    0.upto(w-1).each do |x|
      arr[y][x] = next_state(board, w, h, x, y)
    end
  end

  arr

  0.upto(h-1).each do |y|
    0.upto(w-1).each do |x|
      board[y][x] = arr[y][x]
    end
  end

  board
end

def next_state(board, w, h, x, y)
  cnt = 0
  [-1, 0, 1].each do |dx|
    [-1, 0, 1].each do |dy|
      if dx != 0 or dy != 0
        if x + dx >= 0 and x + dx <= w - 1 and y + dy >= 0 and y + dy <= h - 1 && board[y + dy][x + dx] == 1
          cnt += 1
        end
      end
    end
  end

  if board[y][x] == 1
    if cnt < 2 or cnt > 3
      return 0 
    else
      return 1
    end
  else
    if cnt == 3
      return 1 
    else
      return 0
    end
  end
end

puts "#{game_of_life([[0,0,0,0],[0,1,1,0],[0,1,1,0],[0,0,0,0]])}"