class Solution:
    def move_outwords( self, l , r, string, res_len, res_str):
        while l >= 0 and r < len(string) and string[l] == string[r]:
            if res_len < r-l+1:
                res_len = r-l+1
                res_str = string[l:r+1]
            l -= 1
            r += 1

        return res_len, res_str


    def longestPalindrome(self, s: str) -> str:

        res_len = 0
        res_str = ""

        for i in range(len(s)):
            # l, r = i, i
            res_len, res_str = self.move_outwords(i, i, s, res_len, res_str)
            # l, r = i, i+1
            res_len, res_str = self.move_outwords(i, i+1,s, res_len, res_str)

        return res_str

        