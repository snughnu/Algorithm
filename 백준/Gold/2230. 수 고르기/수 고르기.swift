func solution(_ nums: [Int], _ m: Int) {
    var result: Int = Int.max
    let n: Int = nums.count
    var i: Int = 0
    var j: Int = 0
    
    while i < n && j < n {
        let diff: Int = nums[j] - nums[i]

        if diff >= m {
            result = min(result, diff)
            i += 1
        } else {
            j += 1
        }
    }

    print(result)
}

let input: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let n: Int = input[0]
let m: Int = input[1]

var nums: [Int] = []

for _ in (0..<n) {
    let line = Int(readLine()!)!
    nums.append(line)
}

solution(nums.sorted(), m)
