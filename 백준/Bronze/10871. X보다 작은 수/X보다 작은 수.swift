func solution(_ target: Int, _ nums: [Int]) {
    let result = nums.filter { $0 < target }
    print(result.map { String($0) }.joined(separator: " "))
}

let target = readLine()!.split(separator: " ").map { Int($0)! }[1]
let nums = readLine()!.split(separator: " ").map { Int($0)! }
solution(target, nums)
