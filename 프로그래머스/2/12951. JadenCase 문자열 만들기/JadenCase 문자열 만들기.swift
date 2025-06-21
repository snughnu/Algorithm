func solution(_ s: String) -> String {
    var result: [String] = []
    var words: [String] = s.split(separator: " ", omittingEmptySubsequences: false).map { String($0) }
    
    for word in words {
        if word.isEmpty {
            result.append("")
            continue
        }

        var chars: [Character] = Array(word)
        chars[0] = Character(String(chars[0]).uppercased())

        for i in (1..<chars.count) {
            chars[i] = Character(String(chars[i]).lowercased())
        }

        result.append(String(chars))
    }

    return result.joined(separator: " ")
}