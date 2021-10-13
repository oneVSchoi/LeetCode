class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var result: Int = 0
        let dx: [Int] = [1, -1, 0, 0]
        let dy: [Int] = [0, 0, 1, -1]
        
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        
        func dfs(_ x: Int, _ y: Int) {
            for i in 0..<4 {
                let nx: Int = x + dx[i]
                let ny: Int = y + dy[i]
                
                if nx < 0 || ny < 0 || nx >= grid.count || ny >= grid[0].count {
                    continue
                }
                
                if grid[nx][ny] == "0" || visited[nx][ny] {
                    continue
                }
                
                visited[nx][ny] = true
                dfs(nx, ny)
            }
        }
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == "1" && !visited[i][j] {
                    result += 1
                    visited[i][j] = true
                    dfs(i, j)
                }
            }
        }
        
        return result
    }
}
