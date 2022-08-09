class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let numLength: Int = nums.count
        var index: Int = 0
        
        for _ in 0..<numLength {
            if nums[index] == 0 {
                nums.append(nums.remove(at: index))
            } else {
                index += 1
            }
        }
    }
}
