# encoding : utf-8

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val, n = nil)
    @val = val
    @next = n
  end

  def to_s
    if @next
      "#{@val} -> #{@next.to_s}"
    else
      @val
    end

  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  root = nil
  carry = 0

  cur_l1 = l1
  cur_l2 = l2
  prev_node = nil

  while cur_l1 || cur_l2
    v1 = cur_l1 ? cur_l1.val : 0
    v2 = cur_l2 ? cur_l2.val : 0

    s = v1 + v2 + carry

    carry = s > 9 ? 1 : 0
    num = s > 9 ? s - 10 : s

    node = ListNode.new(num)
    if prev_node 
      prev_node.next = node
      prev_node = node
    else
      root = node
      prev_node = node
    end
    

    cur_l1 = cur_l1.next if cur_l1
    cur_l2 = cur_l2.next if cur_l2
  end

  if carry == 1
    node = ListNode.new(1)
    
    prev_node.next = node
  end

  root
end


l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))

puts add_two_numbers(l1, l2)