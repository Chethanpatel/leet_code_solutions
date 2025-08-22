class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        r = list(ransomNote)
        m  = list(magazine)

        for rchar in r:
            if rchar in m:
                m.remove(rchar)
            else:
                return 1==2
        
        return True

        