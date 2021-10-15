class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var graph: [[Int]] = Array(repeating: [], count: numCourses)
        var indegree: [Int] = Array(repeating: 0, count: numCourses)
        
        for prerequisite in prerequisites {
            let next: Int = prerequisite[0]
            let prev: Int = prerequisite[1]
            
            graph[prev].append(next)
            indegree[next] += 1
        }
        
        var q: [Int] = []
        
        for i in 0..<numCourses {
            if indegree[i] == 0 {
                q.append(i)
            }
        }
        
        while !q.isEmpty {
            let now: Int = q.removeFirst()
            
            for next in graph[now] {
                indegree[next] -= 1
                
                if indegree[next] == 0 {
                    q.append(next)
                }
            }
        }
        
        for course in indegree {
            if course != 0 {
                return false
            }
        }
        
        return true
    }
}
