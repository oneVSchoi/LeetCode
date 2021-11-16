import heapq

class Solution(object):
    def minPathSum(self, grid):
        m = len(grid)
        n = len(grid[0])

        dx = [0, 1]
        dy = [1, 0]

        flag = [[False] * n for _ in range(m)]

        q = []
        heapq.heappush(q, (grid[0][0], 0, 0))
        flag[0][0] = True

        while True:
            cost, x, y = heapq.heappop(q)

            if x == m-1 and y == n-1:
                return cost
            
            for i in range(2):
                nx = x + dx[i]
                ny = y + dy[i]

                if nx >= m or ny >= n or flag[nx][ny]:
                    continue
                
                heapq.heappush(q, (cost+grid[nx][ny], nx, ny))
                flag[nx][ny] = True
        