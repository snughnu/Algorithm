func solution(_ babbling: [String]) -> Int {
    let can = ["aya", "ye", "woo", "ma"]
    var result: Int = 0

    for word in babbling {
        var temp: String = word
        var prev: String = ""

        while !temp.isEmpty {
            var found = false
            for c in can {
                if temp.hasPrefix(c) {
                    if prev == c { break }
                    prev = c
                    temp.removeFirst(c.count)
                    found = true
                }
            }

            if !found { break }
        }

        if temp.isEmpty { result += 1 }
    }
    return result
}