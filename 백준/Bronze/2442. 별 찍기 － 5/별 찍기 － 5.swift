func solution(_ n: Int) {
    for i in 1...n {
        print(String(repeating: " ", count: n-i) + String(repeating: "*", count: i) + String(repeating: "*", count: i-1))
    }
}
let input = Int(readLine()!)!
solution(input)