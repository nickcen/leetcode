def min_path_sum(grid)
  max_x, max_y = grid[0].length, grid.length
  solutions = {"#{max_y-1}_#{max_x-1}" => grid[max_y-1][max_x-1]}

  solve(grid, max_y, max_x, 0, 0, solutions)
  solutions["0_0"]
end

def solve(grid, max_y, max_x, y, x, solutions)
  key = "#{y}_#{x}"
  unless solutions.has_key?(key)
    if y == max_y - 1
      ret = 0
      x.upto(max_x - 1).each do |i|
        ret += grid[y][i]
      end
      solutions[key] = ret
    elsif x == max_x - 1
      ret = 0
      y.upto(max_y - 1).each do |i|
        ret += grid[i][x]
      end
      solutions[key] = ret
    else
      xv = solve(grid, max_y, max_x, y, x + 1, solutions)
      yv = solve(grid, max_y, max_x, y + 1, x, solutions)

      ret = grid[y][x] + (xv < yv ? xv : yv)
      solutions[key] = ret  
    end
  end

  solutions[key]
end

puts min_path_sum([
  [7,1,3,5,8,9,9,2,1,9,0,8,3,1,6,6,9,5],
  [9,5,9,4,0,4,8,8,9,5,7,3,6,6,6,9,1,6],
  [8,2,9,1,3,1,9,7,2,5,3,1,2,4,8,2,8,8],
  [6,7,9,8,4,8,3,0,4,0,9,6,6,0,0,5,1,4],
  [7,1,3,1,8,8,3,1,2,1,5,0,2,1,9,1,1,4],
  [9,5,4,3,5,6,1,3,6,4,9,7,0,8,0,3,9,9],
  [1,4,2,5,8,7,7,0,0,7,1,2,1,2,7,7,7,4],
  [3,9,7,9,5,8,9,5,6,9,8,8,0,1,4,2,8,2],
  [1,5,2,2,2,5,6,3,9,3,1,7,9,6,8,6,8,3],
  [5,7,8,3,8,8,3,9,9,8,1,9,2,5,4,7,7,7],
  [2,3,2,4,8,5,1,7,2,9,5,2,4,2,9,2,8,7],
  [0,1,6,1,1,0,0,6,5,4,3,4,3,7,9,6,1,9]
  ])