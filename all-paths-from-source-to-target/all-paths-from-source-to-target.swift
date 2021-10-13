class Solution {

    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        let n: Int = graph.count - 1
        var res: [[Int]] = []
        
        func dfs(_ edge: Int, _ path: [Int], _ graph: [[Int]]) {
            if edge == n {
                res.append(path)
            }
            
            for vertex in graph[edge] {
                dfs(vertex, path + [vertex], graph)
            }
        }
        
        for vertex in graph[0] {
            dfs(vertex, [0, vertex], graph)
        }
        
        return res
    }
}
