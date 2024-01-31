# Algorithm Steps:
# 1. Initialize two pointers, fp (first pointer) and sp (second pointer), to 0.
# 2. Traverse the list using pointer sp.
#    a. If nums[sp] is not equal to val:
#       - Move the non-val element to the position of fp.
#       - Increment fp.
#    b. Increment sp.
# 3. The length of the modified list up to index fp is the desired result.

class Solution(object):
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        fp = 0
        sp = 0

        while sp < len(nums):
            if nums[sp]!=val:
                nums[fp] = nums[sp]
                fp +=1
            sp+=1

        return fp
