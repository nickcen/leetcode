class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

class MinStack
  def initialize
    @head = nil
    @min = Float::MAX
  end

  def push(x)
    n = ListNode.new(x)
    n.next = @head
    @head = n

    @min = Float::MAX

    nil
  end

  def pop
    if @head
      n = @head
      @head = @head.next
      if n.val == @min
        @min = Float::MAX
      end
    end
    nil
  end


  def top
    if @head
      @head.val
    else
      nil
    end
  end


  def get_min
    if @min == Float::MAX
      p = @head

      while p
        if p.val < @min
          @min = p.val
        end
        p = p.next
      end
    end

    @min
  end

  def to_s
    v = []
    p = @head
    while p
      v << p.val
      p = p.next
    end
    puts "-> #{v.join('->')} ... #{@min}"

  end
end