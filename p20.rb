def is_valid(s)
  return false if s.length % 2 == 1

  stack = []

  s.each_char do |c|
    case c
    when '(','[','{'
      stack.push(c)
    when ')'
      return false if stack.pop != '('
    when ']'
      return false if stack.pop != '['
    when '}'
      return false if stack.pop != '{' 
    end
  end

  stack.empty? ? true : false
end

puts is_valid('()[]{}')