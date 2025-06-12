func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    // board에서 세로로 된걸 만들어야함
    // columnBoard를 만듦
    // board를 순회 (하나의 가로를 먼저 순회)
        // 가로를 순회
            // 순서대로 columBoard에 넣음

    // moves를 돌면서 board에서 세로로된거의 removeLast를 하고 바구니에 넣음
        // 만약 바구니의 top과 넣을거(board에서 세로로된거의 removeLast)가 같으면 result += 2

    // board를 열기준으로 만들기
    var columnBoard: [[Int]] = Array(repeating: [], count: board[0].count)
    for i in (0..<board.count) {
        for j in (0..<board[0].count) {
            let doll = board[i][j]
            if doll != 0 {
                columnBoard[j].append(doll)
            }
        }
    }

    // columnBoard의 각 열을 뒤집기(board가 위에서부터 정의되어있으므로)
    for i in (0..<columnBoard.count) {
        columnBoard[i].reverse()
    }

    // moves를 순회하면서 stack바구니에 넣기 + 결과 카운트
    var result: Int = 0
    var basketStack: [Int] = []
    for move in moves {
        if columnBoard[move-1].isEmpty { continue }
        let doll = columnBoard[move-1].removeLast()
        if let top = basketStack.last, top == doll {
            basketStack.removeLast()
            result += 2
        } else {
            basketStack.append(doll)
        }
    }

    return result
}