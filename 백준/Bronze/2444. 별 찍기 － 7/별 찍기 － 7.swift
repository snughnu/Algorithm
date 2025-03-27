func solution(_ n: Int) {
    for i in 0..<n {
        print(String(repeating: " ", count: n-i-1) + String(repeating: "*", count: i+1) + String(repeating: "*", count: i))
    }
    for i in 1..<n {
        print(String(repeating: " ", count: i) + String(repeating: "*", count: n-i) + String(repeating: "*", count: n-i-1))
    }
}
let input = Int(readLine()!)!
solution(input)
