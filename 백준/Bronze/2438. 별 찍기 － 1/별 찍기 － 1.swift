func solution(_ num: Int) {
    for i in 1...num {
        print(String(repeating: "*", count: i))
    }
}
let input = Int(readLine()!)!
solution(input)