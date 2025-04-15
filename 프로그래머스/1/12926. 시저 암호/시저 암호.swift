import Foundation

func solution(_ s: String, _ n: Int) -> String {
    var result: String = ""
    let lowerAlpha = Array("abcdefghijklmnopqrstuvwxyz")
    let upperAlpha = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    for char in s {
        if char == " " {
            result.append(" ")
            continue
        }
        
        if char.isLowercase {
            if let index = lowerAlpha.firstIndex(of: char) {
                let newIndex = (index + n) % 26
                result.append(lowerAlpha[newIndex])
            }
        } else if char.isUppercase {
            if let index = upperAlpha.firstIndex(of: char) {
                let newIndex = (index + n) % 26
                result.append(upperAlpha[newIndex])
            }
        }
    }
    return result
}