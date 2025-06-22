func solution(_ s: String) -> Int {
    let wordToNumber: [String: String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9",
    ]

    var result: String = s
    for (word, number) in wordToNumber {
        result = result.replacingOccurrences(of: word, with: number)
    }

    return Int(result)!
}