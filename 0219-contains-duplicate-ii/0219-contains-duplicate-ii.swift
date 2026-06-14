class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        let numsCount = nums.count - 1
        guard k > 0 else { return false }
        for i in 0...numsCount {
            for j in 1...k {
                if i + j <= numsCount && nums[i] == nums[i + j] {
                    return true
                }
            }
        }
        return false
    }
}
