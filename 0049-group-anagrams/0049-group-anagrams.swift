class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 1 else { return [strs] }
        
        var anagrams: [[Character]: [String]] = [:]
                
        for word in strs {
            let k = word.sorted()
            anagrams[k, default: []].append(word)
        }
        
        return Array(anagrams.values)
    }
}

