import Foundation



func solution(_ my_string: String, _ index_list: [Int]) -> String {
    // my_string[ ] + my_string[ ] 꼴인데
    // [ ] 안에는 index_list의 값이 들어가게
    
    var str = ""
    for i in 0..<index_list.count {
        let index = my_string.index(my_string.startIndex, offsetBy: index_list[i])
        str += String(my_string[index])
    }
    return str
}
