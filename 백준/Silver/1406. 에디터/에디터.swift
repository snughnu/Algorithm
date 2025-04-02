import Foundation

var left = Array(readLine()!)
let commandNums = Int(readLine()!)!
var right: [Character] = []

for _ in 0..<commandNums {
    let line = readLine()!
    let op = line.first!

    switch op {
    case "L":
        if let c = left.popLast() {
            right.append(c)
        }
    case "D":
        if let c = right.popLast() {
            left.append(c)
        }
    case "B":
        _ = left.popLast()
    case "P":
        let char = line[line.index(line.startIndex, offsetBy: 2)] // 공백 다음 index
        left.append(char)
    default:
        break
    }
}

print(String(left + right.reversed()))