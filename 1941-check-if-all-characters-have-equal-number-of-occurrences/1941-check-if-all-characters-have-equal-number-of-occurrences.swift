class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        
        var dict: [Character:Int] = [:]
        
        for char in s {
            dict[char, default: 0] += 1
        }
        
        
        return Set<Int>(dict.values).count == 1
    }
}
