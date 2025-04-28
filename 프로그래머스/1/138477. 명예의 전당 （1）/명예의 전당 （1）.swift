func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var result: [Int] = []
    var hallOfFame: [Int] = []

    for s in score {
        hallOfFame.append(s)
        hallOfFame.sort(by: >)
        if hallOfFame.count > k {
            hallOfFame.removeLast()
        }
        result.append(hallOfFame.min()!)
    }
    return result
}