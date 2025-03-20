func solution(_ s: String) -> Bool {
    let lowerCasedS = s.lowercased()
    return lowerCasedS.filter { $0 == "p" }.count == lowerCasedS.filter({ $0 == "y" }).count
}
