class Solution:
    def reverse(self, x: int) -> int:
        x_str = str(x)
        if x_str[0] == '-':
            x_str = x_str[1:]
            x_str = x_str[::-1]
            x_str = int(x_str)
            x_str = x_str * -1
            if x_str < (-1 * (2**31)) or x_str > 2**31:
                return 0
            return x_str
        x_str = x_str[::-1]
        x_str = int(x_str)
        if x_str < (-1 * (2**31)) or x_str > 2**31:
            return 0
        return x_str     