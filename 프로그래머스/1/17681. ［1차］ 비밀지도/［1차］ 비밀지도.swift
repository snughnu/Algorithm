func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    let binaryArr1 = toBinary(n, arr1).map { Array($0) }
    let binaryArr2 = toBinary(n, arr2).map { Array($0) }
    var result: [String] = []

    for i in (0..<n) {
        var line: String = ""
        for j in (0..<n) {
            if binaryArr1[i][j] == "0" && binaryArr2[i][j] == "0" {
                line.append(" ")
            } else {
                line.append("#")
            }
        }
        result.append(line)
    }

    return result
}

func toBinary(_ n: Int, _ arr: [Int]) -> [String] {
    var result: [String] = []
    for number in arr {
        let binary = String(number, radix: 2)
        let padded = String(repeating: "0", count: n-binary.count) + binary
        result.append(padded)
    }
    return result
}