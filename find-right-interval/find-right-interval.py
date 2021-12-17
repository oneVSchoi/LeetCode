class Solution(object):
    def __init__(self):
        self.start = []

    def bs(self, num):
        left = 0
        right = len(self.start) - 1
        res = -1

        while left <= right:
            mid = (left + right) // 2

            if self.start[mid][0] >= num:
                right = mid - 1
                res = self.start[mid][1]
            else:
                left = mid + 1

        return res

    def findRightInterval(self, intervals):
        res = []

        for i in range(len(intervals)):
            self.start.append((intervals[i][0], i))
        self.start.sort()

        for (_, end) in intervals:
            res.append(self.bs(end))

        return res