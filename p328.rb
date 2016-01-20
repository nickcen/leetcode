# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end

  def to_s
    "[#{@val}] - #{@next}"
  end
end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return nil unless head

  h1 = head
  h2 = head.next
  
  return head unless h2  

  l1 = head
  l2 = head.next

  p1 = l2.next
  return head unless p1
  p2 = p1.next

  while p1 || p2
    l1.next = p1
    l2.next = p2
    l1 = p1
    l2 = p2
    if l2
      p1 = l2.next 
    else
      p1 = nil
    end

    if p1
      p2 = p1.next
    else
      p2 = nil
    end
  end

  l1.next = nil if l1
  l2.next = nil if l2

  p = h1
  p = p.next while p.next
  p.next = h2

  h1
end

head = nil
cur = nil

1.upto(3).each do |i|
  node = ListNode.new(i)
  if head == nil
    head = node
  else
    cur.next = node
  end
  cur = node
end

puts odd_even_list(head)