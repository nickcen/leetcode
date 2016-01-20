def lowest_common_ancestor(root, p, q)  
  unless root
    nil
  end
  map = {}
  reverse_map(root, -1, map)

  p_v = p.val
  p_a = []
  while p_v != -1
    p_a << p_v
    p_v = map[p_v]
  end

  q_v = q.val
  q_a = []
  while q_v != -1
    q_a << q_v
    q_v = map[q_v]
  end

  if p_a.length <= q_a.length
    (p_a & q_a).first
  else
    (q_a & p_a).first
  end
end

def reverse_map(root, parent, map)
  if root
    map[root.val] = parent
    reverse_map(root.left, root.val, map) if root.left
    reverse_map(root.right, root.val, map) if root.right
  end
end