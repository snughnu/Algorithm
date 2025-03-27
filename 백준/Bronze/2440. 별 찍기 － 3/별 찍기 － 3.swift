func solution(_ n: Int) {
    for i in 0..<n {
        print(String(repeating: "*", count: n-i))
    }
}
let input = Int(readLine()!)!
solution(input)