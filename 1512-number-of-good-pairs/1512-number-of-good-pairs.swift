class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var counter = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] == nums[j] && i < j {
                    counter += 1
                }
            }
        }

        return counter
    }
}