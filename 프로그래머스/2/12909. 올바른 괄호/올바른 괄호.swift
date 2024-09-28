import Foundation

func solution(_ s:String) -> Bool{
    var leftCount: Int = 0
    var rightCount: Int = 0
    var i:Int = 0
    
    //s를 배열로 만들기
    let arrayS = Array(s)
    
    //Counting하는 내용
    while leftCount >= rightCount && i<arrayS.count {
        if arrayS[i] == "(" { leftCount += 1 }
        if arrayS[i] == ")" { rightCount += 1 }
        i += 1
    }
    
    //")"가 더 많으면 false를 return
    //수정: 괄호의 수가 다르면 false return
        //rightCount가 많은 경우는 위의 while문에서 이미 걸러졌음
    if rightCount != leftCount {return false}
    else {return true}
}
