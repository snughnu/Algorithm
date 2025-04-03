let testCaseNums = Int(readLine()!)!
for _ in 0..<testCaseNums {
    let input = String(readLine()!)
    func solution(_ pw: String) {
        var leftStack: [Character] = []
        var rightStack: [Character] = []

        for char in pw {
            switch char {
            case "<":
                if let last = leftStack.popLast() {
                    rightStack.append(last)
                }
            case ">":
                if let last = rightStack.popLast() {
                    leftStack.append(last)
                }
            case "-":
                _ = leftStack.popLast()
            default:
                leftStack.append(char)
            }
        }
        print(String(leftStack + rightStack.reversed()))
    }
    solution(input)
}