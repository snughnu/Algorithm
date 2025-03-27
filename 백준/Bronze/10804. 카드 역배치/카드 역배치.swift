func solution(_ start: [Int], _ end: [Int]) {
    var result = Array(1...20)

    for i in 0..<10 {
        let s = start[i] - 1
        let e = end[i] - 1
        let reversedPart = result[s...e].reversed()
        result.replaceSubrange(s...e, with: reversedPart)
    }
    print(result.map { String($0) }.joined(separator: " "))
}

var start: [Int] = []
var end: [Int] = []
for _ in 0..<10 {
    let inputs = readLine()!.split(separator: " ").compactMap { Int($0) }
    if inputs.count == 2 {
        start.append(inputs[0])
        end.append(inputs[1])
    }
}
solution(start, end)