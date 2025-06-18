func solution(_ n: Int, _ w: Int, _ num: Int) -> Int {
    // 1. 택배를 쌓는 로직 
    //     - 1부터 n까지 반복
    //         - 짝수행(0, 2, ...)은 왼쪽부터 채우고
    //         - 홀수행(1, 3, ...)은 오른쪽부터 채우고
    var height: Int = (n + (w - 1)) / w
    var box: [[Int]] = Array(repeating: Array(repeating: 0, count: w), count: height)
    var current: Int = 1

    for row in (0..<height) {
        if row % 2 == 0 {   // 짝수행: 왼->오
            for col in (0..<w) {
                if current > n { break }
                box[row][col] = current
                current += 1
            }
        } else {            // 홀수행: 오->왼
            for col in stride(from: w-1, through: 0, by: -1) {
                if current > n { break }
                box[row][col] = current
                current += 1
            }
        }
    }
        
    // 2. 쌓여진 택배에서 num이 들어있는 열 분리
    //     - num의 열 계산
    //     - 배열 = 택배함에서 num의 열을 가져옴
    var targetColumn: Int = 0
    for row in 0..<height {
        for col in (0..<w) {
            if box[row][col] == num {
                targetColumn = col
            }
        }
    }

    var stack: [Int] = []
    for row in (0..<height) {
        if box[row][targetColumn] != 0 {
            stack.append(box[row][targetColumn])
        }
    }

    // 3. 위에서부터 하나씩 꺼내면서 num까지 도달하면 멈춤
    //     - count += 1
    //     - if 배열.removeLast() == num { return count }
    var count: Int = 0
    while !stack.isEmpty {
        count += 1
        if stack.removeLast() == num {
            return count
        }
    }
    return count
}