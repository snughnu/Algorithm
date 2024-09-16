import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result:[Int] = []
    var evenCount = 0
    var oddCount = 0
    for num in num_list {
        if num % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    result.append(evenCount)
    result.append(oddCount)
    return result
}