class Queue

  def initialize
    @datas = []
  end

  def push(x)
    @datas.push(x)
  end


  def pop
    ret = reverse
    @datas.pop
    reverse
    ret
  end


  def peek
    ret = reverse
    reverse
    ret
  end


  def empty
    @datas.length == 0
  end

  def reverse
    tmp = []
    ret = nil
    (@datas.length).times do |_|
      ret = @datas.pop
      tmp.push(ret)
    end
    @datas = tmp
    ret
  end
end

s = Queue.new
s.push(1)
s.push(2)
puts s.pop
puts s.pop