class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var setValue = Set(nums)

        if setValue.count < nums.count {
            return true
        }
        
        return false
    }
}