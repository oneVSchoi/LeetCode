INF = int(1e9)


class Solution:
    def findTheCity(self, n: int, edges: List[List[int]], distanceThreshold: int) -> int:
        graph = [[INF] * n for _ in range(n)]

        for i in range(n):
            graph[i][i] = 0

        for (f, to, weight) in edges:
            graph[f][to] = weight
            graph[to][f] = weight

        for k in range(n):
            for i in range(n):
                for j in range(n):
                    graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])

        min_cnt = INF
        res = 0

        for i in range(n):
            cnt = len(list(filter(lambda x: x <= distanceThreshold, graph[i])))

            if cnt <= min_cnt:
                res = i
                min_cnt = cnt

        return res
