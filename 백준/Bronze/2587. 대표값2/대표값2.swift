func solution(_ nums: [Int]) {
    let n = nums.count
    print(nums.reduce(0, +) / n)
    print(nums.sorted()[n/2])
}
let inputs = (0..<5).compactMap { _ in Int(readLine()!)}
solution(inputs)