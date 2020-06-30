from typing import List

# class Solution:

class CQueue:
    stack1 = list()
    stack2 = list()

    def __init__(self):
        return

    def appendTail(self, value: int) -> None:
        self.stack1.append(value)

    def deleteHead(self) -> int:
        if self.stack2:
            return self.stack2.pop()
        else:
            if self.stack1:
                while self.stack1:
                    self.stack2.append(self.stack1.pop())
                return self.stack2.pop()
            else:
                return -1

action = ["appendTail","deleteHead","appendTail","appendTail","deleteHead","deleteHead","appendTail","appendTail","appendTail","deleteHead","deleteHead","deleteHead","appendTail","appendTail","deleteHead","deleteHead","deleteHead","appendTail","appendTail","deleteHead"]
values = [[11],[],[1],[17],[],[],[19],[20],[13],[],[],[],[12],[3],[],[],[],[10],[19],[]]
c = CQueue()
for index in range(len(action)):
    if action[index] == "appendTail":
        print(c.appendTail(values[index][0]))
    elif action[index] == "deleteHead":
        print(c.deleteHead())
