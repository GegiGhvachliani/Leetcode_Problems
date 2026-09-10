class Solution {
    func reverseString(_ s: inout [Character]) {
        guard !s.isEmpty else { return }
        
        for i in 0...(s.count - 1) / 2 {
            s.swapAt(i, (s.count - i) - 1)
        }
    }
}