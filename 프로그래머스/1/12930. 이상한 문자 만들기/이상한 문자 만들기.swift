func solution(_ s: String) -> String {
    var result: String = ""
    var index = 0
    for char in s {
        if char == " " {
            result += " "
            index = 0
        } else {
            result += index % 2 == 0 ? String(char).uppercased() : String(char).lowercased()
            index += 1
        }
    }
    return result
}