import Foundation

func solution(_ s: String) -> Int {
    var char = Array(s)
    var i = 0
    
    while i < char.count {
        //0
        if char[i] == "z" {
            char[i] = "0"
            char.removeSubrange(i+1...i+3)
        }
        //1
        else if char[i] == "o" {
            char[i] = "1"
            char.removeSubrange(i+1...i+2)
        }
        //2, 3
        else if char[i] == "t" {
            if char[i+1] == "w" {
                char[i] = "2"
                char.removeSubrange(i+1...i+2)
            } else {
                char[i] = "3"
                char.removeSubrange(i+1...i+4)
            }
        }
        //4, 5
        else if char[i] == "f" {
            if char[i+1] == "o" {
                char[i] = "4"
                char.removeSubrange(i+1...i+3)
            } else {
                char[i] = "5"
                char.removeSubrange(i+1...i+3)
            }
        }
        //6, 7
        else if char[i] == "s" {
            if char[i+1] == "i" {
                char[i] = "6"
                char.removeSubrange(i+1...i+2)
            } else {
                char[i] = "7"
                char.removeSubrange(i+1...i+4)
            }
        }
        //8
        else if char[i] == "e" {
            char[i] = "8"
            char.removeSubrange(i+1...i+4)
        }
        //9
        else if char[i] == "n" {
            char[i] = "9"
            char.removeSubrange(i+1...i+3)
        }
        else {
            i += 1
        }
    }
    if let result = Int(String(char)) {
        return result
    } else {
        return 0
    }
}
