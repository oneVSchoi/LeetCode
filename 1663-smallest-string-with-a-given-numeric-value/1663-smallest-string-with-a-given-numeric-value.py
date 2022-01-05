class Solution(object):
    def getSmallestString(self, n, k):
        ans = ''

        while n != 0:
            maxAfterN = 26 * (n-1)

            if maxAfterN >= k:
                ans += 'a'
                k -= 1
            elif maxAfterN < k:
                ans += chr(k - maxAfterN + 96)
                k = maxAfterN

            n -= 1
        
        return ans