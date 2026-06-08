class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var nums: [String] = []
        nums.reserveCapacity(n
        )
        for i in 1...n {
            switch i {
            case let i where i % 15 == 0:
                nums.append("FizzBuzz")
            case let i where i % 3 == 0:
                nums.append("Fizz")
            case let i where i % 5 == 0:
                nums.append("Buzz")
            default:
                nums.append(String(i))
            }
        }
        return nums
    }
}
