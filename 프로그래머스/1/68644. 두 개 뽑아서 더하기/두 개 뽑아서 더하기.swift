import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var sumSet: Set<Int> = []

    for i in (0..<numbers.count) {
        for j in (i+1..<numbers.count) {
            let sum = numbers[i] + numbers[j]
            sumSet.insert(sum)
        }
    }

    return Array(sumSet).sorted()
}