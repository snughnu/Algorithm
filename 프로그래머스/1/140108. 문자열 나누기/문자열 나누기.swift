func solution(_ s: String) -> Int {
    var result: Int = 0
    var count: Int = 0
    var base: Character? = nil

    for char in s {
        if count == 0 {
            base = char
            result += 1
        }

        count += (char == base) ? 1 : -1
    }

    return result   
}