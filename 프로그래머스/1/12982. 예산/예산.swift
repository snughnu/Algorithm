func solution(_ d: [Int], _ budget: Int) -> Int {
    let nums = d.sorted()
    var sum = 0
    var count = 0
    for i in (0..<nums.count) {
        sum += nums[i]
        if sum > budget { return i }
        count = i
    }
    return count+1
}