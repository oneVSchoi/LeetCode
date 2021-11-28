class Solution(object):
    visited = []
    rooms = [[]]

    def canVisitAllRooms(self, rooms):
        self.visited = [False] * len(rooms)
        self.rooms = rooms

        self.dfs(0)

        if False in self.visited:
            return False
        return True

    def dfs(self, now):
        if self.visited[now]:
            return
        
        self.visited[now] = True
        
        for room in self.rooms[now]:
            if self.visited[room]:
                continue

            self.dfs(room)