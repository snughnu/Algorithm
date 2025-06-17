func solution(_ calculations: [Int]) {
    var heap: [Int] = [0]       // heap[0] 은 0으로 더미

    func insert(_ value: Int) {
        heap.append(value)
        var index: Int = heap.count - 1

        // bubble up
        while index > 1 && heap[index] < heap[index / 2] {
            heap.swapAt(index, index/2)
            index /= 2
        }
    }

    func removeMin() -> Int {
        if heap.count == 1 {
            return 0
        }

        let minValue = heap[1]
        if heap.count == 2 {
            heap.removeLast()
        } else {
            heap[1] = heap.removeLast()

            // bubble down
            var index = 1
            while index * 2 < heap.count {
                var child = index * 2                   // 왼쪽 자식
                if child + 1 < heap.count && heap[child + 1] < heap[child] {
                    child += 1                          // 오른쪽 자식
                }

                if heap[index] <= heap[child] { break }

                heap.swapAt(index, child)
                index = child
            }
        }

        return minValue
    }

    for calculation in calculations {
        if calculation == 0 {
            print(removeMin())
        } else {
            insert(calculation)
        }
    }
}

// main 부분
let n: Int = Int(readLine()!)!
var calculations: [Int] = []
for _ in (0..<n) {
    calculations.append(Int(readLine()!)!)
}
solution(calculations)
