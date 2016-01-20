class NumArray
  def initialize(nums)
    @nums = nums

    @num100s = []

    0.step(100 * (nums.length / 100 - 1), 100).each do |i|
      @num100s << nums[i .. (i+99)].reduce(&:+) if i < @nums.length
    end
  end

  def sum_range(i, j)
    il = i / 100
    jl = j / 100

    if il + 1 >= jl - 1
      @nums[i..j].reduce(&:+)
    else
      @num100s[(il+1)..(jl-1)].reduce(&:+) + @nums[i .. (il+1)*100 - 1].reduce(&:+) + @nums[(jl * 100) .. j].reduce(&:+)  
    end
  end
end