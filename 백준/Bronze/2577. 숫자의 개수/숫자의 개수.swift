func solution(_ A: Int, _ B: Int, _ C: Int) {
    let arrayNum = String(A*B*C).compactMap { $0.wholeNumberValue }
    var count = Array(repeating: 0, count: 10)
    for n in arrayNum {
        count[n] += 1
    }
    print(count.compactMap { String($0) }.joined(separator: "\n"))
}
let A = Int(readLine()!)!
let B = Int(readLine()!)!
let C = Int(readLine()!)!
solution(A, B, C)