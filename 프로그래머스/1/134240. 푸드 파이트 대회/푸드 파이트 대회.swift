func solution(_ food: [Int]) -> String {
    var result: String = ""
    for i in (1..<food.count) {
        var count = food[i] / 2
        let s: String = String(i)
        while count > 0 {
            result.append(s)
            count -= 1
        }
    }
    return result + "0" + result.reversed()
}