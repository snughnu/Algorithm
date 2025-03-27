func solution(_ nums: [Int]) {
    var max: Int = 0
    var maxIndex = 0
    for i in 0..<nums.count {
        if max < nums[i] {
            max = nums[i]
            maxIndex = i+1
        }
    }
    print("\(max)")
    print("\(maxIndex)")
}
var inputs: [Int] = []
for _ in 0..<9 {
    let input = Int(readLine()!)!
    inputs.append(input)
}
solution(inputs)