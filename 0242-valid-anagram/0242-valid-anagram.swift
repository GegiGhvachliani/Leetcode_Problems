class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        var s1: [Character] = Array(s)
        var s2: [Character] = Array(t)
        
        guard s1.count == s2.count else { return false }
        
        var dict1: [Character:Int] = [:]
        var dict2: [Character:Int] = [:]
                        
        for char in s1 {
            dict1[char, default: 0] += 1
        }
        
        for char in s2 {
            dict2[char, default: 0] += 1
        }
        
        return dict1 == dict2
    }
}

