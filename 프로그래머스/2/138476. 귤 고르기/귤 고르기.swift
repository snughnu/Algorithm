func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    // 딕셔너리 등록
    var tangerineDict: [Int: Int] = [:]
    for size in tangerine {
        tangerineDict[size, default: 0] += 1
    }

    // value 기준으로 정렬 (시간복잡도: k log k)
    let sortedCounts: [Int] = tangerineDict.values.sorted(by: >)

    var sum: Int = 0
    var count: Int = 0
    for num in sortedCounts {
        sum += num
        count += 1
        if sum >= k {
            break
        }
    }

    return count
}