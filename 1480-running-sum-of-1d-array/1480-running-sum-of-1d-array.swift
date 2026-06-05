class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum: [Int] = [nums[0]]
        
        for i in 1..<nums.count {
            sum.append(sum[i-1] + nums[i])
        }
        return sum
    }
}
