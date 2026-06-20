class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var counter = [Int:Int]()
        
        for i in nums {
            counter[i, default: 0] += 1
        }
        
        var arr: [[Int]] = []
        arr.reserveCapacity(counter.count)
        
        for (key, value) in counter {
            arr.append([key, value])
        }
        
        let sorted = arr.sorted { $0[1] > $1[1] }
        
        var arrr = [Int]()
        for i in 0..<k {
            arrr.append(sorted[i][0])
        }
        return arrr
    }
}
