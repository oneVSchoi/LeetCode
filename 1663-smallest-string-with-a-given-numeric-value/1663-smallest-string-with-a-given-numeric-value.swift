class Solution {
    func getSmallestString(_ n: Int, _ k: Int) -> String {
        var ans: String = ""
        var kk: Int = k
        
        for idx in (0..<n).reversed() {
            let maxAfterN: Int = 26 * idx
            
            if maxAfterN >= kk {
                ans += "a"
                kk -= 1
            } else if maxAfterN < kk {
                let value = kk - maxAfterN + 96
                
                ans += String(UnicodeScalar(value)!)
                kk = maxAfterN
            }
        }
        
        return ans
    }
}


