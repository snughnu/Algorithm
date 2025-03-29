func solution(_ k: Int, _ students: [[Int]]) {
    var roomCount = 0
    for gender in 0...1 {
        for grade in 1...6 {
            let count = students[gender][grade]
            roomCount += (count + k - 1) / k
        }
    }
    print(roomCount)
}

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = firstLine[0]
let k = firstLine[1]
var students = Array(repeating: Array(repeating: 0, count: 7), count: 2)

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").compactMap { Int($0) }
    let gender = line[0]
    let grade = line[1]
    students[gender][grade] += 1
}
solution(k, students)
