# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0

  values = [[1]]

  2.upto(num_rows).each do |idx|
    vs = []
    values[-1].reduce(0) do |memo, n|
      vs << memo + n
      n
    end
    vs << 1
    values << vs
  end

  values
end

generate(5).each do |r|
  puts r.join('-')
end