import Foundation

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    
    var i = 0, j = 0
    for card in goal {
        
        if i < cards1.count && card == cards1[i] {
            i += 1
        } else if j < cards2.count && card == cards2[j] {
            j += 1
        } else { return "No" }
    
    }
    return "Yes"
}
