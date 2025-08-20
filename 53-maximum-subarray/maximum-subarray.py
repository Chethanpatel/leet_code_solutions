class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        curSum = 0
        maxSum = nums[0]
        for num in nums:
            curSum = max(curSum, 0)
            curSum += num
            maxSum = max(maxSum, curSum)

        return maxSum

## The idea is we should make sure that current sum is not negative, as soon as it is negative, set it to zero. at the same time,
## upadte the maximum sum as maximum of current sum and already existing maxmum sum. Snippet 
# curSum += num tells update the cursum 