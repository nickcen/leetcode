# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def merge_two_lists(l1, l2)
  return l1 unless l2
  return l2 unless l1

  h1 = l1
  h2 = l2

  c = nil

  if h1.val < h2.val
    c = h1
    h1 = h1.next
  else
    c = h2
    h2 = h2.next
  end

  while h1 && h2
    if h1.val < h2.val
      c.next = h1
      h1 = h1.next
    else
      c.next = h2
      h2 = h2.next
    end
    c = c.next
  end

  c.next = h1 if h1
  c.next = h2 if h2

  l1.val < l2.val ? l1 : l2
end