import Foundation

func solution(_ ineq:String, _ eq:String, _ n: Int, _ m: Int) -> Int {
    var result = 0
    if eq == "!" {
        if ineq == ">" && n > m {
            result = 1
        } else if ineq == "<" && n < m {
            result = 1
        } else {
            result = 0
        }
        
    } else if eq == "=" {
        if ineq == ">" && n >= m {
            result = 1
        } else if ineq == "<" && n <= m {
            result = 1}
        else {
            result = 0
        }
    }
    return result
}
