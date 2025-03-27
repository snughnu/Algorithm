func solution(_ n: Int) {
    for i in 0..<n {
        print(String(repeating: " ", count: i) + String(repeating: "*", count: 2*n-2*i-1))
    }
    if n > 1 {
        for i in 2...n {
            print(String(repeating: " ", count: n-i) + String(repeating: "*", count: i*2-1))
        }
    }
}
let input = Int(readLine()!)!
solution(input)
