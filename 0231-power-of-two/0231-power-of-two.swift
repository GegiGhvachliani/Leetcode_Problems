class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        
        guard n != 1 else { return true }
        
        var k: Double = Double(n)
        
        while (k > 1) {
            
            if k / 2 == 1 {
                return true
            }
            
            k /= 2
            
        }
        
        return false
    }
}