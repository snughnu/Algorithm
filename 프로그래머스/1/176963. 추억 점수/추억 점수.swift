func solution(_ name: [String], _ yearning: [Int], _ photo: [[String]]) -> [Int] {
    var result: [Int] = []
    var yearnDict: [String: Int] = [:]
    for i in (0..<name.count) {
        yearnDict[name[i]] = yearning[i]
    }
    for people in photo {
        var sum: Int = 0
        for person in people {
            sum += yearnDict[person] ?? 0
        }
        result.append(sum)
    }
    return result
}