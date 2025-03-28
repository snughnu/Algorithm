func solution(_ str: String) {
    var count = Array(repeating: 0, count: 26)
    for s in str {
        let index = Int(s.asciiValue! - Character("a").asciiValue!)
        count[index] += 1
    }
    print(count.map { String($0) }.joined(separator: " "))
}
let input = String(readLine()!)
solution(input)