func solution(_ first: String, _ second: String) {
    var firstAlphabetCount = Array(repeating: 0, count: 26)
    var secondAlphabetCount = Array(repeating: 0, count: 26)
    var deleteCount = 0

    for c in first {
        let index = Int(c.asciiValue! - Character("a").asciiValue!)
        firstAlphabetCount[index] += 1
    }
    for c in second {
        let index = Int(c.asciiValue! - Character("a").asciiValue!)
        secondAlphabetCount[index] += 1
    }

    for n in 0..<26 {
        deleteCount += abs(firstAlphabetCount[n] - secondAlphabetCount[n])
    }
    print(deleteCount)
}
let first = String(readLine()!)
let second = String(readLine()!)
solution(first, second)