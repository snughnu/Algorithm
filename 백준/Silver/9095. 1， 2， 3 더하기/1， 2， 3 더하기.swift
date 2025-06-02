func solution(_ count: Int, _ nums: [Int]) {
    var dp: [Int] = Array(repeating: 0, count: 11)

    dp[1] = 1
    dp[2] = 2
    dp[3] = 4

    for i in (4...10) {
        dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
    }

    for num in nums {
        print(dp[num])
    }
}

let count: Int = Int(readLine()!)!
var nums: [Int] = []
for _ in (0..<count) {
    nums.append(Int(readLine()!)!)
}

solution(count, nums)