class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var dict: [Int:Int] = [:]
         
         for i in 0..<nums.count {
             if let j = dict[target - nums[i]] {
                 return [j, i]
             }
             dict[nums[i]] = i
         }
         
         return []
    }
}
