import Foundation

func solution(_ n:Int) -> Int {
    let answer:Double = sqrt(Double(n))
    let intAnswer:Int = Int(answer)
    
    if answer  == Double(intAnswer) {
        return 1
    } else { return 2 }
}
