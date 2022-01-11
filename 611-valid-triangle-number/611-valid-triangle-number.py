class Solution(object):
    def triangleNumber(self, nums):
        answer = 0

        nums.sort()

        for i in range(2, len(nums)):
            left = 0
            right = i - 1

            while left < right:
                if nums[left] + nums[right] > nums[i]:
                    answer += right - left
                    right -= 1
                else:
                    left += 1

        return answer