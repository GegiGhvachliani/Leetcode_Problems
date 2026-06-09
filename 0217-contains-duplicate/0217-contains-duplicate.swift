class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let checked = Set(nums).count
        return checked != nums.count
    }
}
