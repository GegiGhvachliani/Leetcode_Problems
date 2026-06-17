class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var writeIndex = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[writeIndex] = nums[i]
                writeIndex += 1
            }
        }
        
        for i in writeIndex..<nums.count {
            nums[i] = 0
        }
    }
}