func solution(_ A: Int, _ B: Int, _ C: Int) {
    let sortedNums = [A, B, C].sorted()
    print(sortedNums.map { String($0) }.joined(separator: " "))
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
solution(input[0], input[1], input[2])