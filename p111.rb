def min_depth(root)
  return 0 unless root

  c_s = []

  depth = 1
  c_s.push(root)

  while !c_s.empty?
    t_s = []
    
    c_s.each do |n|
      return depth if !n.left && !n.right

      t_s << n.left if n.left
      t_s << n.right if n.right
    end
    
    depth += 1
    c_s = t_s
  end
end