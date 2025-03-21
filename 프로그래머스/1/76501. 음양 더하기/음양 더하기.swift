func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    var sum = 0
    var numSigns: [Int] = []
    for i in 0..<absolutes.count {
        if signs[i] == true { numSigns.append(1) } else { numSigns.append(-1) }
        sum += absolutes[i] * numSigns[i]
    }
    return sum
}
