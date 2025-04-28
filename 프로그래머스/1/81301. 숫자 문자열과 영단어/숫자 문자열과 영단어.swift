func solution1(_ s: String) -> Int {
    var result: String = ""
    let arrayS = Array(s)
    var i = 0

    while i < arrayS.count {
        if arrayS[i] == "z" { 
            result.append("0")
            i += 4
        } else if arrayS[i] == "o" {
            result.append("1")
            i += 3
        } else if arrayS[i] == "t" {
            if arrayS[i+1] == "w" {
                result.append("2")
                i += 3
            } else {
                result.append("3")
                i += 5
            }
        } else if arrayS[i] == "f" {
            if arrayS[i+1] == "o" {
                result.append("4")
                i += 4
            } else {
                result.append("5")
                i += 5
            }
        } else if arrayS[i] == "s" {
            if arrayS[i+1] == "i" {
                result.append("6")
                i += 3
            } else {
                result.append("7")
                i += 5
            }
        } else if arrayS[i] == "e" {
            result.append("8")
            i += 5
        } else if arrayS[i] == "n" {
            result.append("9")
            i += 4
        } else {
            result.append(arrayS[i])
            i += 1
        }
    }    
    return Int(result)!
}

func solution(_ s: String) -> Int {
    let numDict: [String: String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    var result: String = ""
    var temp: String = ""

    for c in s {
        if c.isNumber {
            result.append(c)
        } else {
            temp.append(c)
            if let number = numDict[temp] {
                result.append(number)
                temp = ""
            }
        }
    }

    return Int(result)!
}