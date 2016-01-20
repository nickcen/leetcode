# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  return head unless head

  cur = head
  while cur.next != nil
    if cur.val == cur.next.val
      cur.next = cur.next.next
    else
      cur = cur.next
    end
  end

  head
end