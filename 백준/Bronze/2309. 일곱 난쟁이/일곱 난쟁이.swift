func solution(_ nums: [Int]) {
    let totalSum = nums.reduce(0, +)
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            if totalSum - nums[i] - nums[j] == 100 {
                var result = nums
                result.remove(at: j)
                result.remove(at: i)
                print(result.sorted().map { String($0) }.joined(separator: "\n"))
                return
            }
        }
    }
}
let inputs = (0..<9).compactMap { _ in Int(readLine()!) }
solution(inputs)