def count_and_say(n)
  s = '1'
  1.upto(n - 1).each do |i|
    s = translate(s)
  end
  s
end

def translate(n)
  cur_char = nil
  cur_count = 0
  result = []

  n.chars.each do |c|
    if cur_char
      if c != cur_char
        result << [cur_count, cur_char]
        cur_char = c
        cur_count = 1
      else
        cur_count += 1
      end
    else
      cur_char = c
      cur_count = 1
    end
  end
  result << [cur_count, cur_char]

  result.map{|count, char| "#{count}#{char}"}.join
end

1.upto(10).each do |n|
  puts count_and_say(n)
end