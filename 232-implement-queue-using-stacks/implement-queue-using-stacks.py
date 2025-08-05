class MyQueue:

    def __init__(self):
        self.arr = list()
        
    def push(self, x: int) -> None:
        self.arr.append(x)

    def pop(self) -> int:
        removed =self.arr[0]
        self.arr =self.arr[1:]
        return removed

    def peek(self) -> int:
        return self.arr[0]
        

    def empty(self) -> bool:
        return True if len(self.arr) == 0 else False
        


# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()