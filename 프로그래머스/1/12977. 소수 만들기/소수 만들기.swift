func solution(_ nums: [Int]) -> Int {
    var sum: Int = 0
    var result: Int = 0

    for i in (0..<nums.count) {
        for j in (i+1..<nums.count) {
            for k in (j+1..<nums.count) {
                sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) { result += 1 }
            }
        }
    }

    return result
}

func isPrime(_ num: Int) -> Bool {
    if num < 2 { return false }
    let sqrtNum = Int(Double(num).squareRoot())
    for i in (2...sqrtNum) {
        if num % i == 0 { return false }
    }
    return true
}
