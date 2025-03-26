func solution(_ n: Int, _ target: Int, _ nums: [Int]) {
    let result = nums.filter { $0 < target }
    print(result.map { String($0) }.joined(separator: " "))
}

if let firstLine = readLine(),
   let secondLine = readLine() {
    let parts = firstLine.split(separator: " ").map { Int($0)! }
    let n = parts[0]
    let target = parts[1]
    let nums = secondLine.split(separator: " ").map { Int($0)! }
    solution(n, target, nums)
}

