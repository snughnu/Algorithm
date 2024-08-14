import Foundation

//readLine()으로 문자열과 number(count)를 입력받음
//주의: 띄어쓰기로 입력이 구분되는 코드를 작성해야함
let strAndNumber = readLine()!.components(separatedBy: [" "])
let (str, number) = (strAndNumber[0], Int(strAndNumber[1])!)


//number(count)번 만큼 반복해서 출력하는 코드를 작성
for _ in 1...number {
    print(str,  terminator: "")
}
