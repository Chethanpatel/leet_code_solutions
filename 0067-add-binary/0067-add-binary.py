class Solution:
    def addBinary(self, a: str, b: str) -> str:
        i, j, carry = len(a)-1, len(b)-1, 0
        res = []
        while i>=0 or j>=0 or carry:
            bit_a = ord(a[i]) - 48 if i >= 0 else 0
            bit_b = ord(b[j]) - 48 if j >= 0 else 0

            sum = bit_a + bit_b + carry
            print("sum", sum)
            res.append(str(sum % 2))
            print("res", res)
            carry = int(sum) // 2 
            print("carry", carry)
            print("------")

            i -= 1
            j -= 1
            print(res)

        print(res)
        return ''.join(reversed(res))


        