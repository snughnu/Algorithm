import Foundation

func solution(_ my_string:String, _ k:Int) -> String {
    //repeat문 사용
    //  joined 사용
    let str = String(repeating: my_string, count: k)
    return str
}
