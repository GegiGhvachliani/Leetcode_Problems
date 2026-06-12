class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var rows: [[Int]] = [[1]]
        
        for i in  1..<numRows {
            var p = Array(repeating: 1, count: i+1)
            for j in 1..<i {
                p[j] = rows[i-1][j] + (rows[i-1][j - 1] ?? 0)
            }
            rows.append(p)
        }
        return rows
    }
}
