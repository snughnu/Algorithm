func solution(_ row: Int, _ col: Int, _ dna: [String]) {
    let result: [Character] = makeDNA(row, col, dna)
    let totalHammingDistance: Int = hammingDistance(result, dna)

    print(String(result))
    print(totalHammingDistance)
}

func makeDNA(_ row: Int, _ col: Int, _ dna: [String]) -> [Character] {
    var result: [Character] = []
    for colIndex in 0..<col {
        var nucleotideDict: [Character: Int] = [:]
        for rowIndex in 0..<row {
            let nucleotide = Array(dna[rowIndex])[colIndex]
            nucleotideDict[nucleotide, default: 0] += 1
        }

        let mostFrequent = nucleotideDict.sorted {
            if $0.value == $1.value {
                return $0.key < $1.key
            }
            return $0.value > $1.value
        }.first!.key

        result.append(mostFrequent)
    }

    return result
}

func hammingDistance(_ result: [Character], _ dnas: [String]) -> Int {
    var distance = 0

    for dna in dnas {
        let dnaArray = Array(dna)
        for i in 0..<result.count {
            if result[i] != dnaArray[i] {
                distance += 1
            }
        }
    }

    return distance
}

// MARK: - main
let line = readLine()!.split(separator: " ").compactMap { Int($0) }
let row = line[0]
let col = line[1]

var dna: [String] = []
for _ in 0..<row {
    dna.append(readLine()!)
}

solution(row, col, dna)
