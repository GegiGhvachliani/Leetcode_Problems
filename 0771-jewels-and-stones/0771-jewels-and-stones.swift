


class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        
        var jewelsSet = Set<Character>(jewels)
        var counter = 0
        
        for stone in stones {
            if jewelsSet.contains(stone) {
                counter += 1
            }
        }
        
        return counter
    }
}
