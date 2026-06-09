class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int:Int] = [:]
        
        for i in nums {
            dict[i, default: 0] += 1
            if dict[i]! > 1 { return true }
        }
        return false
    }
}
