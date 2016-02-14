# Definition for binary tree with next pointer.
class TreeLinkNode(object):
  def __init__(self, x):
    self.val = x
    self.left = None
    self.right = None
    self.next = None
  def __str__(self):
    return "%s[l:%s,r:%s,n:%s]" % (self.val, self.left, self.right, self.next)

class Solution(object):
  def connect(self, root):
    if root:
      self.travel(root)

  def travel(self, root):
    if root.left:
      root.left.next = root.right
      if root.next:
        root.right.next = root.next.left

      if root.left:
        self.travel(root.left)

      if root.left: 
        self.travel(root.right) 

nodes = []
for i in range(0, 31):
  nodes.append(TreeLinkNode(i))

r1 = nodes[1]
for i in range(1, 15):
  nodes[i].left = nodes[2*i]
  nodes[i].right = nodes[2*i + 1]

Solution().connect(r1)

for i in range(1, 31):
  if nodes[i].next:
    print "%s next is %s" % (nodes[i].val, nodes[i].next.val)
  else:
    print "%s next is None" % (nodes[i].val)