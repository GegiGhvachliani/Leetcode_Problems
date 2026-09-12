class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict: [Character:Int] = [:]
        var chars: [Character] = Array(s)
        
        for char in s {
            dict[char, default: 0] += 1
        }
        
        for i in 0..<chars.count {
            if dict[chars[i]] == 1 { return i }
        }
        
        return -1
    }
}