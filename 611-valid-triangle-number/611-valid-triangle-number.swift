class Solution {
    func triangleNumber(_ nums: [Int]) -> Int {
        var answer: Int = 0
        
        if nums.count < 3 {
            return 0
        }
        
        let numsSort: [Int] = nums.sorted()
        
        for i in 2..<numsSort.count {
            var left: Int = 0
            var right: Int = i - 1
            
            while left < right {
                if numsSort[left] + numsSort[right] > numsSort[i] {
                    answer += right - left
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
        
        return answer
    }
}