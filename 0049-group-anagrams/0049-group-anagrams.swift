class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 1 else { return [strs] }
        
        var dict = [String: [String]]()
        
        for i in strs {
            let k = String(i.sorted())
            dict[k, default: []].append(i)
        }
        
        return Array(dict.values)
    }
}

