class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        f, l = {}, {}
        for c in s:
            if c in f:
                f[c] = f[c]+1
            else:
                f[c] = 1

        for c in t:
            if c in l:
                l[c] = l[c]+1
            else:
                l[c] = 1

        return f == l



        

        
             



        

        
        