class Solution {
func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int:Int]()
    
    for i in nums {
        dict[i, default: 0] += 1
    }
    
    for (key,value) in dict {
        if value == 1 { return key }
    }
    return 000
}
}