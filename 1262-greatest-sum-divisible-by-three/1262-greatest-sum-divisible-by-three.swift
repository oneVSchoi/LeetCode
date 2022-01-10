class Solution {
    func maxSumDivThree(_ nums: [Int]) -> Int {
        var sums: [Int] = [0, 0, 0]
        
        for num in nums {
            var modSums: [Int] = []
            
            for i in 0..<3 {
                modSums.append(sums[i] + num)
            }
            
            for i in 0..<3 {
                let mod: Int = modSums[i] % 3
                sums[mod] = max(sums[mod], modSums[i])
            }
        }
        
        return sums[0]
    }
}
