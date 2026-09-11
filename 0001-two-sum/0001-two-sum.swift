class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        var dict: [Int:Int] = [:]
        
        for i in 0..<nums.count {
            
            if let k = dict[target - nums[i]] {
                return [k, i]
            } else {
                dict[nums[i]] = i
            }
        }
        
        return []
    }
}