func solution(_ applicants: [Int], _ countOfLooking: [Int]) {
    var applicants: [Int] = applicants
    let mainLooking: Int = countOfLooking[0]
    let subLooking: Int = countOfLooking[1]
    var result: Int = 0

    for i in (0..<applicants.count) {
        let diff = applicants[i] - mainLooking
        if diff <= 0 {
            applicants[i] = 0
        } else {
            applicants[i] = diff
        }
        result += 1
    }

    for i in (0..<applicants.count) {
        let tmp = applicants[i] / subLooking
        if tmp * subLooking == applicants[i] {
            result += tmp
        } else {
            result += (tmp + 1)
        }
    }

    print(result)
}

let countOfExamPlace: Int = Int(readLine()!)!
let applicants: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let countOfLooking: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

solution(applicants, countOfLooking)