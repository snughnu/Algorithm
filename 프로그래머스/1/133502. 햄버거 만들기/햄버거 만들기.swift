import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var counting = 0
    var i = 0
    var ingredients = ingredient
   
    while i <= ingredients.count - 4 {
        if ingredients[i] == 1 && ingredients[i+1] == 2 && ingredients[i+2] == 3 && ingredients[i+3] == 1 {
            counting += 1
            ingredients.removeSubrange(i...i+3)
            i = max(0, i - 3)
        } else {
            i += 1
        }
        
    }

    return counting
}
