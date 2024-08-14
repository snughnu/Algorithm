import Foundation

//readLine()을 사용하는데 공백으로 구분되게 코드를 작성하고
//각각 상수로 초기화함
let twoStr = readLine()!.components(separatedBy: " ").map{ $0 }
let (str1, str2) = (twoStr[0], twoStr[1])

//상수를 붙여서 출력함
print(str1, terminator: "")
print(str2)
