class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        res = 0
        count = 0
        char_set = set()
        start = 0

        for i, char in enumerate(s):
            if char not in char_set:
                char_set.add(char)
                count = i - start + 1
                res = max(count, res)
            else:
                while s[start] != char:
                    char_set.remove(s[start])
                    start += 1
                start += 1

        return res


        