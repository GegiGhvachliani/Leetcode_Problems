class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        
        var dict: [Int:Int] = [:]
        var sum: Int = 0
        
        for i in nums {
            dict[i, default: 0] += 1
        }
        
        for (key,value) in dict {
            if value == 1 { sum += key }
        }
        
        return sum
    }
}
