func solution(_ nums: [Int]) {
    let oddNums = nums.filter { $0 % 2 == 1 }
    if oddNums.isEmpty {
        print("-1")
    } else {
        print(oddNums.reduce(0, +))
        print(oddNums.min()!)
    }
}
let inputs = (0..<7).compactMap { _ in Int(readLine()!) }
solution(inputs)