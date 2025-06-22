func solution(_ arr: [Int]) -> Int {
    var arr: [Int] = arr

    while arr.count > 1 {
        let a: Int = arr.removeLast()
        let b: Int = arr.removeLast()
        arr.append(lcm(a, b))
    }

    return arr[0]
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b / gcd(a, b)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a: Int = a
    var b: Int = b

    while b != 0 {
        let tmp = a % b
        a = b
        b = tmp
    }

    return a
}