require 'thread'

class Stack

  def initialize
    @datas = Queue.new
  end

  def push(x)
    @datas.push(x)
  end

  def pop
    tmp = Queue.new
    (@datas.length - 1).times do |_|
      tmp.push(@datas.pop)
    end
    ret = @datas.pop
    @datas = tmp
    ret
  end


  def top
    tmp = Queue.new
    ret = nil
    (@datas.length).times do |_|
      ret = @datas.pop
      tmp.push(ret)
    end
    @datas = tmp
    ret
  end


  def empty
    @datas.length == 0
  end
end

s = Stack.new
s.push(1)
s.push(2)
puts s.pop
puts s.top
puts s.empty
puts s.pop