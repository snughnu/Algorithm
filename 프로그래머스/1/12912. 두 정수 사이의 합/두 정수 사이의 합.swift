func solution(_ a: Int, _ b: Int) -> Int {
    return (min(a, b)...max(a, b)).reduce(0, +)
}