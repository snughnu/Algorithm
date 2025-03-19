func solution(_ x: Int, _ n: Int) -> [Int] {
    return (1...n).map { x * $0 }
}