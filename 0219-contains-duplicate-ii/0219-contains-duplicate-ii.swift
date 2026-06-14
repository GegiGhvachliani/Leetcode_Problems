class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict: [Int:Int] = [:]
        
        for (index, value) in nums.enumerated() {
            if (dict[value] == nil) {
                dict[value] = index
            } else {
                if index - dict[value]! <= k {
                    return true
                } else {
                    dict[value] = index
                }
            }
        }
        return false
    }
}
