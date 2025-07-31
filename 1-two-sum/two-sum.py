class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        d = dict()
        for i in range(len(nums)):
            d[nums[i]] = i

        for i in range(len(nums)):
            if (target - nums[i]) in d:
                j = d[target - nums[i]]
                if i!=j:
                    return [i, j]

        



          
        