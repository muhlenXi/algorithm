from typing import List
import collections

class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        if head == None or head.next == None:
            return head
        current = self.reverseList(head.next)

        head.next.next = head
        head.next = None

        return current

    def reverseList1(self, head: ListNode) -> ListNode:
        if head == None or head.next == None:
            return head

        pre = None
        current = head
        next = current.next

        while current != None:
            current.next = pre
            pre = current

            current = next
            next = current.next

        return current


    def printList(self, head: ListNode):
        while head != None:
            print(head.val)
            head = head.next


node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
node2.next = node3
# node3.next = node4
# node4.next = node5

solution = Solution()
new = solution.reverseList1(node1)
solution.printList(new)













