
class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var dict: [Character:Int] = [:]
        var dict2: [Int:Int] = [:]
        
        
        for j in jewels {
            for s in stones {
                if j == s {
                    dict[j, default: 0] += 1
                }
            }
        }
        
        return dict.values.reduce(0, +)
    }
}
