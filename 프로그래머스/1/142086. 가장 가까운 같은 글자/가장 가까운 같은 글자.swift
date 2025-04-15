import Foundation

func solution(_ s: String) -> [Int] {
    var result: [Int] = []
    var indexDict: [Character: Int] = [:]

    for (i, char) in s.enumerated() {
        if let prevIndex = indexDict[char] {
            result.append(i - prevIndex)
        } else {
            result.append(-1)
        }
        indexDict[char] = i
    }
    return result
}