func solution(_ A: Int, _ B: Int) {
    print(A+B)
    print(A-B)
    print(A*B)
    print(A/B)
    print(A%B)
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
solution(input[0], input[1])