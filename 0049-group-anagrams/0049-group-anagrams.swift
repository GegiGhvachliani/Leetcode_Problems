class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 1 else { return [strs] }
        
        var anagrams: [[Character]: [String]] = [:]
        
        var groupedAnagrams: [[String]] = []
        
        for word in strs {
            let k = word.sorted()
            anagrams[k, default: []].append(word)
        }
        
        for i in anagrams.keys {
            groupedAnagrams.append(anagrams[i]!)
        }
        
        return groupedAnagrams
    }
}

