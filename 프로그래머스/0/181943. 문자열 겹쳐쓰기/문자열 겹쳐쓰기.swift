import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    //length: overwite_string의 길이를 상수에 저장
    let length = overwrite_string.count
    
    //str: overwite_string의 s부터 length만큼의 문자열을 새로 만듦
    let str1 = my_string.prefix(s)
    let str2 = my_string.dropFirst(s + length)
    let str = str1 + overwrite_string + str2
    
    //새로운 문자열 반환
    return String(str)
}

//함수 호출하기
