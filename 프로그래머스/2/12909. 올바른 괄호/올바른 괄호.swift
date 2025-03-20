func solution(_ s: String) -> Bool {
    var stack: [Character] = []
    for parentheses in s {
        if parentheses == "(" { stack.append(")") }
        else if parentheses == "{" { stack.append("}") }
        else if parentheses == "[" { stack.append("]") }
        else {
            guard let top = stack.popLast() else { return false }
            if top != parentheses { return false }
        }
    }
    return stack.isEmpty
}