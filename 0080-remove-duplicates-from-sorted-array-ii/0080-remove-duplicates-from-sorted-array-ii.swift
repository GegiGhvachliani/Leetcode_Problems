class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 2 { return nums.count }
        
        var k = 2
        
        for i in 2..<nums.count {
            if nums[i] != nums[k - 2] {
                nums[k] = nums[i]
                k += 1
            }
        }
        return k
    }
}