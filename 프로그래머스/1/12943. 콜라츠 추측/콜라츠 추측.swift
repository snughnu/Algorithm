func solution(_ num: Int) -> Int {
    var currentNum = num
    var count = 0
    while count < 500 && currentNum != 1 {
        if currentNum % 2 == 0 { currentNum /= 2 }
        else { currentNum = currentNum * 3 + 1}
        count += 1
    }
    return currentNum == 1 ? count : -1
}
