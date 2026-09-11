class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let sChars = Array(s)
        let tChars = Array(t)

        var sToT: [Character: Character] = [:]
        var tToS: [Character: Character] = [:]

        for i in 0..<sChars.count {
            let sChar = sChars[i]
            let tChar = tChars[i]

            if let mapped = sToT[sChar], mapped != tChar {
                return false
            }

            if let mapped = tToS[tChar], mapped != sChar {
                return false
            }

            sToT[sChar] = tChar
            tToS[tChar] = sChar
        }

        return true
    }
}