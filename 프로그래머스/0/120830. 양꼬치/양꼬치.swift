import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var kCount = k
    var nCount = n
    
    while nCount >= 10 {
        kCount -= 1
        nCount -= 10
    }
    
    return 12000*n + 2000*kCount
}
