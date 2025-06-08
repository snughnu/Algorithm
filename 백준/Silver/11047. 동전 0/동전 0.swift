// 11047 동전 0

func solution(_ coins: [Int], _ target: Int) {
    var result: Int = 0
    var target = target
    let sortedCoins: [Int] = coins.sorted(by: >)

    for coin in sortedCoins {
        if target == 0 { break }
        if coin <= target {
            let count = target / coin
            target -= coin * count
            result += count
        }
    }

    print(result)
}

let inputs = readLine()!.split(separator: " ").compactMap { Int($0) }
let count = inputs[0]
let target = inputs[1]

var coins: [Int] = []
for _ in (0..<count) {
    coins.append(Int(readLine()!)!)
}

solution(coins, target)
