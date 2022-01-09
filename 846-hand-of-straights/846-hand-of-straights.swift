class Solution {
    func isNStraightHand(_ hand: [Int], _ groupSize: Int) -> Bool {
        if hand.count % groupSize != 0 {
            return false
        }
        
        var groupDict: [Int: Int] = [:]
        var sortHand: [Int] = hand.sorted()
        
        while !sortHand.isEmpty {
            let now: Int = sortHand[0]
            groupDict[now] = groupSize - 1
            
            for i in 1..<groupSize {
                let next: Int = now + i
                
                if !sortHand.contains(next) {
                    return false
                }
                
                groupDict[now]! -= 1
                guard let idx = sortHand.firstIndex(of: next) else { return false }
                sortHand.remove(at: idx)
            }
            
            sortHand.remove(at: 0)
        }
        
        return true
    }
}