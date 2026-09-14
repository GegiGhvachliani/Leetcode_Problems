class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        var set1 = Set<Int>(nums1)
        var set2 = Set<Int>(nums2)
        
        let common = set1.intersection(set2)
        
        return [Array(set1.subtracting(set2)), Array(set2.subtracting(set1))]
    }
}
