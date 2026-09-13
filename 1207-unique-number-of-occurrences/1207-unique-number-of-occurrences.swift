class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        
        var dict: [Int:Int] = [:]
        
        for i in arr {
            dict[i, default: 0] += 1
        }
        
        let dictValues = Array(dict.values)
        
        return dictValues.count == Set<Int>(dictValues).count
    }
}
