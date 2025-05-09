func solution(_ n: Int) -> Int {
    var isPrime: [Bool] = Array(repeating: true, count: n+1)
    isPrime[0] = false
    isPrime[1] = false

    for i in (2...n) {
        if isPrime[i] {
            var j = i * 2
            while j <= n {
                isPrime[j] = false
                j += i
            }
        }
    }

    return isPrime.filter { $0 }.count
}