import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    //d를 오름차순으로 정렬하는 알고리즘
    let sortedD = d.sorted()
    
    //몇 개의 부서인지 헤아리는 알고리즘
        //변수 설정
            //변수: 반복상수, 합계, 몇 개의 부서인지
    var count: Int = 0
    var sum: Int = 0
    var i: Int = 0
    
        //while문으로
            //조건: 합계 <= 예산
            //합계 += 정렬된 배열[i]
            //몇 개의 부서 += 1
    while i < sortedD.count && sum + sortedD[i] <= budget {
        sum += sortedD[i]
        i += 1
        count += 1
    }
    
    return count
}
