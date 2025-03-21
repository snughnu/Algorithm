func solution(_ seoul: [String]) -> String {
    var seoulDict: [String: Int] = [:]
    for (index, name) in seoul.enumerated() {
        seoulDict[name] = index
    }
    let kimIndex = seoulDict["Kim"]!
    return "김서방은 \(kimIndex)에 있다"
}