func solution(_ count: Int, _ times: [Int]) {
    var M: Int = 0
    var Y: Int = 0
    for i in 0..<count {
        Y += ((times[i] / 30) + 1) * 10
        M += ((times[i] / 60) + 1) * 15
    }
    if M < Y {
        print("M \(M)")
    } else if M > Y {
        print("Y \(Y)")
    } else {
        print("Y M \(M)")
    }
}
let count = Int(readLine()!)!
let times = readLine()!.split(separator: " ").map { Int($0)! }
solution(count, times)