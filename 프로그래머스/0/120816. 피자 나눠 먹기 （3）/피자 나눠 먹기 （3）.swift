import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    if n%slice == 0 {
        return n/slice
    } else { return n/slice + 1 }
    
}