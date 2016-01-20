def delete_node(node)
  while node.next != nil
    node.val = node.next.val
    if node.next.next == nil
      node.next = nil
    else
      node = node.next
    end
  end 
end