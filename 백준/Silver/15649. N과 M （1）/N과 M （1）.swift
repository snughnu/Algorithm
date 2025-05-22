func solution(_ n: Int, _ m: Int) {
    var visited: [Bool] = Array(repeating: false, count: n + 1)
    var result: [Int] = []

    func backtrack(_ depth: Int) {
        if depth == m {
            let str = result.map { String($0) }.joined(separator: " ")
            print(str)
            return
        }

        for i in (1...n) {
            if !visited[i] {
                visited[i] = true
                result.append(i)
                backtrack(depth + 1)
                result.removeLast()
                visited[i] = false
            }
        }
    }

    backtrack(0)
}

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]

solution(n, m)