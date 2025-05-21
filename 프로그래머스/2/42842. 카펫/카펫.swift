func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    // let sum = brown과 yellow를 더함
    // sum의 약수의 경우를 만듦
        // 예: 12 -> [1, 12], [2, 6], [3, 4]
            // 근데 [큰, 작은] 순으로
        // 약수의 경우에서  4, 3 -> (4-2) * (3-2) == yellow 인지 확인하기
    
    var result: [Int] = []

    let sum: Int = brown + yellow
    let divisiors = makeDivisior(sum)

    for divisior in divisiors {
        if (divisior[0] - 2) * (divisior[1] - 2) == yellow {
            result = divisior
            break
        }
    }

    return result
}

func makeDivisior(_ num: Int) -> [[Int]] {
    var result: [[Int]] = []

    let sqrtNum: Int = Int(Double(num).squareRoot())

    for i in (1...sqrtNum) {
        if num % i == 0 {
            if i * i == num {
                result.append([i, i])
            }
            result.append([num / i, i])
        }
    }

    return result
}