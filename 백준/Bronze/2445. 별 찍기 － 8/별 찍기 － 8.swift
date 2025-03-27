func solution(_ n: Int) {
    for i in 1...n {
        print(String(repeating: "*", count: i) + String(repeating: " ", count: 2*n-2*i) + String(repeating: "*", count: i))
    }
    for i in 1...n {
        print(String(repeating: "*", count: n-i) + String(repeating: " ", count: i*2) + String(repeating: "*", count: n-i))
    }
}
let input = Int(readLine()!)!
solution(input)
