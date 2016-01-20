def is_same_tree(p, q)
  if p && q
    p.val == q.val && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right) 
  elsif p || q
    false
  else
    true
  end
end