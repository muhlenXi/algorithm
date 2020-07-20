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

    def minimumTotal(self, triangle: List[List[int]]) -> int:
        memo = [[-1 for i in range(len(triangle))] for j in range(len(triangle))]
        value = self.recursionWithMemo(triangle, 0, 0, memo)
        return value

    # 递归
    def recursion(self, triangle: List[List[int]], i: int, j: int) -> int:
        if i == len(triangle) - 1:
            return triangle[i][j]
        down = self.recursion(triangle, i + 1, j)
        down_right = self.recursion(triangle, i + 1, j + 1)
        return min(down, down_right) + triangle[i][j]

    # 递归 + 备忘录
    def recursionWithMemo(self, triangle: List[List[int]], i: int, j: int, memo: List[List[int]]) -> int:
        if i == len(triangle) - 1:
            if memo[i][j] == -1:
                memo[i][j] = triangle[i][j]
            return memo[i][j]
        down = memo[i+1][j]
        if down == -1:
            down = self.recursionWithMemo(triangle, i + 1, j, memo)
            memo[i+1][j] = down
        down_right = memo[i+1][i+1]
        if down_right == -1:
            down_right = self.recursionWithMemo(triangle, i+1, j+1, memo)
            memo[i+1][j+1] = down_right
        return min(down, down_right) + triangle[i][j]


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

tri = [[2], [3,4], [6, 5, 7], [4, 1, 8, 3]]
print(solution.minimumTotal(tri))














