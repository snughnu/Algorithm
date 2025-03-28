 func solution(_ n: Int, _ nums: [Int], _ x: Int) {
    let sortedNums = nums.sorted()
    var count = 0
    var left = 0
    var right = n-1

    while left < right {
        let sum = sortedNums[left] + sortedNums[right]
        if sum == x {
            count += 1
            left += 1
            right -= 1
        } else if sum > x {
            right -= 1
        } else {
            left += 1
        }
    }
    print(count)
}
let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }
let x = Int(readLine()!)!
solution(n, nums, x)