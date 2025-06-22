func solution(_ numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for i in (0..<numbers.count-1) {
        for j in (i+1..<numbers.count) {
            let sum: Int = numbers[i] + numbers[j]
            result.append(sum)
        }
    }

    return Set(result).sorted(by: <)
}