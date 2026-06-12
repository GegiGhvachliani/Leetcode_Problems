class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var rows: [[Int]] = [[1]]
        rows.reserveCapacity(numRows)
        
        for i in 1..<numRows {
            var row = Array(repeating: 1, count: i + 1)
            for j in 1..<i {
                row[j] = rows[i-1][j] + rows[i-1][j-1]
            }
            rows.append(row)
        }
        return rows
    }
}