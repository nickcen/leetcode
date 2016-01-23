def generate_parenthesis(n)
  result = []
  pair(n, n, '', result)
  result
end

def pair(left, right, str, result)
  if left == 0 and right == 0
    result << str
  else
    pair(left-1, right, str + '(', result) if left > 0
    pair(left, right-1, str + ')', result) if left < right and right > 0
  end
end

puts generate_parenthesis(3)