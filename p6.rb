def convert(s, num_rows)
  return '' if s.empty?
  return s if num_rows == 1

  tables = []
  1.upto(num_rows).each do |_|
    tables << [nil] * s.length
  end

  x = 0 
  y = 0
  xdir = 0
  ydir = 1

  1.upto(s.length).each do |idx|
    tables[y][x] = s[idx - 1]

    x += xdir
    y += ydir

    if y == num_rows - 1
      xdir = 1
      ydir = -1
    elsif y == 0
      xdir = 0
      ydir = 1
    end
  end

  tables.map{|arr| arr.compact.join}.join
end

def print_table(tables)
  puts tables.map{|arr| arr.join(',')}.join("\n")
end

puts convert('PAYPALISHIRING', 3)