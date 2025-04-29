func solution(_ answers: [Int]) -> [Int] {
    let one: [Int] = [1, 2, 3, 4, 5]
    let two: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let three: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var index: [Int] = [0, 0, 0]
    var answerCount: [Int] = [0, 0, 0]
    var result: [Int] = []

    for answer in answers {
        if answer == one[index[0]] {
            answerCount[0] += 1
        }
        if answer == two[index[1]] {
            answerCount[1] += 1
        }
        if answer == three[index[2]] {
            answerCount[2] += 1
        }

        index[0] += 1
        index[1] += 1
        index[2] += 1

        if index[0] >= one.count {
            index[0] = 0
        }
        if index[1] >= two.count {
            index[1] = 0
        }
        if index[2] >= three.count {
            index[2] = 0
        }
    }

    for i in (1...3) {
        let maxCount = answerCount.max()
        if answerCount[i-1] == maxCount {
            result.append(i)
        }
    }

    return result
}