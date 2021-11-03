typealias nodeTuple = (Int, Int)

class Solution {
    func networkDelayTime(_ times: [[Int]], _ n: Int, _ k: Int) -> Int {
        var graph = Array(repeating: [nodeTuple](), count: n+1)
        var distance: [Int] = Array(repeating: Int(1e9), count: n+1)
        
        for time in times {
            graph[time[0]].append((time[1], time[2]))
        }
        
        var queue: [nodeTuple] = []
        queue.append((0, k))
        distance[k] = 0
        
        while !queue.isEmpty {
            queue.sort(by: { $0.0 > $1.0 })
            let tuple: nodeTuple = queue.removeFirst()
            let dist: Int = tuple.0
            let now: Int = tuple.1
            
            if distance[now] < dist {
                continue
            }
            
            for g in graph[now] {
                let cost: Int = dist + g.1
                
                if cost < distance[g.0] {
                    distance[g.0] = cost
                    queue.append((cost, g.0))
                }
            }
        }
        
        var answer: Int = 0
        
        for i in 1...n {
            answer = max(answer, distance[i])
        }
        
        if answer == Int(1e9) {
            return -1
        }
        
        return answer
    }
}