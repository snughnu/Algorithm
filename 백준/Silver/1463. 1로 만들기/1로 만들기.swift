func solution(_ num: Int) {
    if num == 1 {
        print(0)
    } else {
        var dp: [Int] = Array(repeating: 0, count: num + 1)
        for i in (2...num) {
            dp[i] = dp[i - 1] + 1
            if i % 2 == 0 {
                dp[i] = min(dp[i], dp[i/2] + 1)
            }
            if i % 3 == 0 {
                dp[i] = min(dp[i], dp[i/3] + 1)
            }
        }
        print(dp[num])
    }
}

let num: Int = Int(readLine()!)!
solution(num)