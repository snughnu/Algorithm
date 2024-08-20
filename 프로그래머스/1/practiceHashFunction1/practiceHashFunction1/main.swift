import Foundation
/*
func solution(배열1, 배열2) {
    배열3은 딕셔너리 키: 이름, 값: 등장빈도

    배열3 = 배열1의 각각 요소에 +1 씩 해줌
           동명이인(=중복)이 있어도 ㄱㅊ
    배열2의 요소가 배열3에 있으면 등장빈도를 -1 씩 해줌
 
    print(배열3, 등장빈도가 0이 아닌 요소만)
}
*/

func solution(_ array1: [String], _ array2: [String]) {
    //키와 값을 가지는 배열 생성
    var array = [String: Int]()
    
    //선수를 array 배열에 추가하면서 같은 키값 마다 +1을 함
    for player in array1 {
        array[player, default: 0] += 1
    }
    
    //array2 배열을 돌면서 array 배열의 키의 '값'을 -1 함
    for player in array2 {
        array[player]! -= 1
    }
    
    //array 배열에서 값이 0 이 아니면 출력
    for (player, count) in array {
        if count != 0 {
            print("\(player)")
        }
    }
}
