from collections import deque

class Solution:
    def isValid(self, s: str) -> bool:
        # stack = deque()
        # maps = {'(':')', '{':'}', '[':']'}
      
        # if len(s) % 2 == 1:
        #     return 1==2

        # for i in range(len(s)):
        #     if s[i] in maps.keys():
        #         stack.append(s[i])
        #     else:
        #         if len(stack) != 0:
        #             if maps[stack[-1]] != s[i]:
        #                 return False
        #             stack.pop()


        # return len(stack) == 0

        stack = []
        mapping = {')': '(', '}': '{', ']': '['}

        for char in s:
            if char in mapping.values():  # opening brackets
                stack.append(char)
            elif char in mapping:         # closing brackets
                if not stack or stack[-1] != mapping[char]:
                    return False
                stack.pop()
            else:
                # ignore non-bracket characters (optional)
                pass

        return not stack