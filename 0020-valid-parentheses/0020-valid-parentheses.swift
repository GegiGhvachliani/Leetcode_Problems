class Solution {
    func isValid(_ s: String) -> Bool {
        
        var arr: [Character] = []
        var closingBrackets: [Character] = ["}", ")", "]"]
        var openingBrackets: [Character] = ["{", "(", "["]
        var dict: [Character:Character] = ["}":"{", ")":"(", "]":"["]
        
        for char in s {
            if openingBrackets.contains(char) {
                arr.append(char)
            }
            
            if closingBrackets.contains(char) {
                if arr.last == dict[char] {
                    arr.removeLast()
                } else {
                    return false
                }
            }
        }
        
        return arr.isEmpty
    }
}
