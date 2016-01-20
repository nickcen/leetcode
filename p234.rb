# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  return true unless head

  p = head
  nh = nil
  while p
    n = ListNode.new(p.val)
    n.next = nh
    nh = n
    p = p.next
  end

  p = head
  q = nh

  while p
    if p.val == q.val
      p = p.next
      q = q.next
    else
      return false
    end
  end

  return true
  
end