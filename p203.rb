def remove_elements(head, val)
  while head && head.val == val
    head = head.next
  end

  return head unless head
  
  p, q = head, head.next
  while q
    if q.val == val
      p.next = q.next
      q = p.next
    else
      p = q
      q = q.next
    end
  end
  head
end