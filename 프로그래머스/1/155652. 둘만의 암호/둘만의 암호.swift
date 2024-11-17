import Foundation
func solution(_ s: String, _ skip: String, _ index:Int) -> String {
    var result: String = ""
    // 알파벳 딕셔너리 선언
    var dictionary: [Character: Int] = [
        "a":1,"b":2,"c":3, "d":4, "e":5, "f":6, "g":7, "h":8, "i":9, "j":10, "k":11, "l":12, "m":13,
        "n":14, "o":15, "p":16, "q":17, "r":18, "s":19, "t":20, "u":21, "v":22, "w":23, "x":24, "y":25, "z":26
    ]
    
    // key값이 skip에 해당하는 문자는 딕셔너리에서 삭제
    for skipAlphabet in skip {
        dictionary.removeValue(forKey: skipAlphabet)
    }
    
    // 남은 알파벳 배열에 저장 -> value순서에 따라서 정렬하고 저장
    let remainedAlpabet = dictionary.keys.sorted { dictionary[$0]! < dictionary[$1]! }
    
    for char in s {
        if let currentIndex = remainedAlpabet.firstIndex(of: char) {
            // 새로운 인덱스 계산 -> index를 더한게 배열의 길이를 넘어가면 다시 앞에서부터
            let newIndex = (currentIndex + index) % remainedAlpabet.count
            // 결과에 추가
            result.append(remainedAlpabet[newIndex])
        }
    }
    return result
}
