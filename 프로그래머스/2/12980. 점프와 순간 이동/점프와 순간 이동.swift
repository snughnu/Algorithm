import Foundation

func solution(_ n:Int) -> Int {
    var count: Int = 0
    var n = n
    
    while n > 0 {
        if n % 2 == 0 {
            n = n/2
        } else {
            n = n-1
            count += 1
        }
    }
    
    return count
}