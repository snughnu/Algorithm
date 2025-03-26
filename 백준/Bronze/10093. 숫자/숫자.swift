func solution(_ nums: [Int64]) {
    if let a = nums.min(), let b = nums.max() {
        if abs(a - b) <= 1 {
            print(0)
            return
        }
        let start = min(a, b)
        let end = max(a, b)
        print(end - start - 1)
        for i in (start + 1)..<end {
            print(i, terminator: " ")
        }
    }
}
let input = readLine()!.split(separator: " ").map { Int64($0)! }
solution(input)