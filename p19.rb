# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  p = head    
  c = n
  while c > 0 && p
    p = p.next
    c -= 1
  end 

  if !p 
    if c > 0
      return head
    elsif c == 0
      head = head.next
      return head
    end
  end

  p = p.next
  q = head
  while p != nil
    q = q.next
    p = p.next
  end
  q.next = q.next.next

  head
end