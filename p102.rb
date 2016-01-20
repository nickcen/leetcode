def level_order(root)
  return [] unless root
  c_s = []
  v_s = []

  c_s.push(root)

  while !c_s.empty?
    t_s = []
    vs = []
    c_s.each do |n|
      vs << n.val
      t_s << n.left if n.left
      t_s << n.right if n.right
    end
    
    v_s.push(vs)
    c_s = t_s
  end
  v_s
end