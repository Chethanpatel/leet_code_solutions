class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        maj_dict = dict.fromkeys(nums, 0)
        n = len(nums)

        for num in nums:
            maj_dict[num] += 1
            if maj_dict[num] > n/2:
                return num
            

        




            

        


        