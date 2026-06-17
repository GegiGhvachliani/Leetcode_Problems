class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return -444 }
        var sum = nums.reduce(0, +)
        var max = nums.count
        var anotherSum = (max * (max + 1)) / 2
        
        return anotherSum - sum
    }
}
