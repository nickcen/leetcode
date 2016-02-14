class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end

  def to_s
    "#{@val} - #{@next}"
  end
end

def swap_pairs(head)
  p = head

  while p
    if p.next
      p.val, p.next.val = p.next.val, p.val
      p = p.next.next
    else
      break
    end
  end

  head
end

r1 = ListNode.new(1)
r2 = ListNode.new(2)
r3 = ListNode.new(3)
r4 = ListNode.new(4)

r1.next = r2
r2.next = r3
r3.next = r4

puts swap_pairs(r1)
