import Foundation

func solution(_ food: [Int]) -> String {
    
    var half: [Int] = []
    
    for i in 0..<food.count {
        half.append(food[i] / 2)
    }
    
    var frontHalf:[Int] = []
    for i in 0..<half.count {
        frontHalf += Array(repeating: i, count: half[i])
    }
    
    var backHalf = frontHalf.reversed()
    
    var foods = frontHalf + [0] + backHalf
    
    
    var result = foods.map { String($0) }.joined(separator: "")
    
    
    return result
}

