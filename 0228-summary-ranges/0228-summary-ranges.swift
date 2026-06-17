
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var pirveli = nums[0]
        var meore = pirveli
        var arr: [String] = []
        
        for i in 0..<nums.count {
            if i+1 < nums.count && nums[i] + 1 == nums[i + 1] {
                meore = nums[i + 1]
            } else {
                if pirveli == meore {
                    let str = "\(pirveli)"
                    arr.append(str)
                } else {
                    let str = "\(pirveli)->\(meore)"
                    arr.append(str)
                }
                pirveli = nums[i+1]
                meore = pirveli
            }
        }
        return arr
    }
}
