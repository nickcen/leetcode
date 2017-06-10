def matrix_reshape(nums, r, c)
  o_r = nums.length
  o_c = nums[0].length

  ret = []

  if o_r * o_c < r * c
    nums
  else
    0.upto(r - 1).each do |r_i|
      row = []
      0.upto(c - 1).each do |c_i|
        idx = r_i * c + c_i

        o_c_i = idx % o_c
        o_r_i = idx / o_c

        row << nums[o_r_i][o_c_i]
      end
      ret << row
    end

    ret
  end
end

puts "#{matrix_reshape([[1,2, 3],[4,5,6]], 3, 2)}"