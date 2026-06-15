class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var lastRow: [Int] = [1]
        guard rowIndex > 0 else { return [1] }
        for i in 1...rowIndex {
            var newRow = Array(repeating: 1, count: i + 1)
            for j in 1..<i {
                newRow[j] = lastRow[j] + lastRow[j - 1]
            }
            lastRow = newRow
        }
        return lastRow
    }
}
