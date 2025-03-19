func solution(_ n: Int64) -> [Int] {
    return Array(String(n)
        .reversed())
        .compactMap { $0.wholeNumberValue }
}
