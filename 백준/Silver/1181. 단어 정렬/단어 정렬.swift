import Foundation

func solution(_ words: [String]) -> [String] {
    // 중복제거 -> 집합을 생각했는데 딕셔너리를 사용하면 집합을 사용할 필요가 없음
    // 딕셔너리 선언
    var dictionary: [String: Int] = [:]
    
    // words를 순회하면서 dictionary에 word추가(중복제거 포함됨)
    for word in words {
        // dictionary의 key: String
        // dictionary의 value: Int (word.count)
        dictionary.updateValue(word.count, forKey: word)
    }
    
    // 정렬하기 -> value가 같으면 key에 따라 정렬
//        let result = dictionary.sorted { (firstPair, secondPair) in
//            if firstPair.value == secondPair.value {
//                return firstPair.key < secondPair.key
//            } else {
//                return firstPair.value < secondPair.value
//            }
//        }
    let result = dictionary.sorted {
        if $0.value == $1.value {  // 만약 word의 count가 같으면
            return $0.key < $1.key  // key값 순서대로 정렬하도록
        } else {  // word의 count가 다르면
            return $0.value < $1.value  // word의 count 순서대로 정렬하도록
        }
    }
    
    return result.map { $0.key }
}

// 입력 처리 및 출력
let N = Int(readLine()!)!
var words: [String] = []
for _ in 0..<N {
    words.append(readLine()!)
}

let wordSort = solution(words)
for word in wordSort {
    print(word)
}
