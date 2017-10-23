def max_count(m, n, ops)
  mr = m 
  mc = n

  mr * mc

  ops.each do |op|
    tr, tc = op
    mr = [mr, tr].min
    mc = [mc, tc].min
  end

  mr * mc
end

ret = max_count(3, 3, [])
puts "#{ret}"