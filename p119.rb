# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  vs = [1]
  1.upto(row_index).each do |idx|
    ts = []
    vs.reduce(0) do |memo, n|
      ts << memo + n
      n
    end
    ts << 1
    vs = ts
  end
  vs
end

puts get_row(3)