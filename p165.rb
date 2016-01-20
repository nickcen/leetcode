def compare_version(version1, version2)
  vs1 = version1.split('.')
  vs2 = version2.split('.')

  if vs1.length > vs2.length
    (vs1.length - vs2.length).times do 
      vs2 << '0'
    end
  elsif vs1.length < vs2.length
    (vs2.length - vs1.length).times do 
      vs1 << '0'
    end 
  end


  vs1.zip(vs2).each do |v1, v2|
    if v1.to_i > v2.to_i
      return 1
    elsif v1.to_i < v2.to_i
      return -1
    end
  end

  0
end

puts compare_version('1.0', '1')