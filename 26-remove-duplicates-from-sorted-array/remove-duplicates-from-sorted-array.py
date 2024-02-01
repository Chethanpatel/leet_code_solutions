class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        # Check if the array is empty
        if not nums:
            return 0

        # Initialize pointers
        slow = 0

        # Iterate through the array
        for fast in range(1, len(nums)):
            # Compare current and previous elements
            if nums[fast] != nums[slow]:
                # Increment slow pointer and update the element
                slow += 1
                nums[slow] = nums[fast]

        # Return the number of unique elements (length of the modified array)
        return slow + 1
