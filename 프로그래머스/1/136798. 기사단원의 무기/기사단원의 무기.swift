func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result: Int = 0
    for i in (1...number) {
        var count = countOfDivisior(i)
        if count > limit { count = power }
        result += count
    }
    return result
}

func countOfDivisior(_ n: Int) -> Int {
    var count: Int = 0
    let root: Int = Int(Double(n).squareRoot())
    for i in (1...root) {
        if n % i == 0 {
            count += 2
            if i * i == n {
                count -= 1
            }
        }
    }
    return count
}