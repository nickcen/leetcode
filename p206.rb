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

def reverse_list(head)
  return head unless head
  return head if head.next == nil  

  p = head
  q = p.next
  head.next = nil
  
  while q != nil
    r = q.next
    q.next = p
    p = q
    if r
      q = r
    else
      break
    end
  end
  q
end

p1 = ListNode.new(1)
p2 = ListNode.new(2)
p3 = ListNode.new(3)

p1.next = p2
p2.next = p3

puts reverse_list(p1)