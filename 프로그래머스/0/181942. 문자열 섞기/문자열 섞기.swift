import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    //새로운 문자열str을 만듦
        //길이는 str1과 str2의 합
    let length = str1.count + str2.count
    var strArray = Array(repeating: Character(" "), count: length)
    
    var str1Index = 0
    var str2Index = 0
    //str1의 i번째 문자를 str의 짝수 인덱스에 넣음
    for i in 0..<length {
        if i % 2 == 0 && str1Index < str1.count {
            let index = str1.index(str1.startIndex, offsetBy: str1Index)
            strArray[i] = str1[index]
            str1Index += 1
        } else if str2Index < str2.count {
            let index = str2.index(str2.startIndex, offsetBy: str2Index)
            strArray[i] = str2[index]
            str2Index += 1
        }
    }
    //str2의 i번째 문자를 str의 홀수 인덱스에 넣음
    
    let str = String(strArray)
    return str
}
