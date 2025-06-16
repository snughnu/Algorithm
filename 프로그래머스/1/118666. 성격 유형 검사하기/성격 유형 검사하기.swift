func solution(_ survey: [String], _ choices: [Int]) -> String {
    // R T F C M J A N 의 딕셔너리를 사용하는게 좋을거같음
    // survey를 순환
        // AN인지 NA인지 확인해야함 즉, 순서에 따라서
        // choices의 선택을 확인 (survey와 같은 인덱스 사용)
            // 선택에 따라서 점수 부여
                // (4-선택)이 음수이면 survey에서 뒤에거에 abs(4-선택)만큼 딕셔너리에 더하고
                // (4-선택)이 양수이면 survey에서 앞에거에 abs(4-선택)만큼 딕셔너리에 더하고
                // (4-선택)이 0이면 넘어가고
    
    
    // 딕셔너리 선언
    var resultDict: [Character: Int] = [
        "R": 0,
        "T": 0,
        "F": 0,
        "C": 0,
        "M": 0,
        "J": 0,
        "A": 0,
        "N": 0
    ]

    // survey를 순환하면서 사전에 점수 등록
    for i in (0..<survey.count) {
        let front: Character = Array(survey[i])[0]
        let back: Character = Array(survey[i])[1]

        let criteria: Int = 4 - choices[i]
        if criteria < 0 {
            resultDict[back]! += abs(criteria)
        } else if criteria > 0 {
            resultDict[front]! += abs(criteria)
        } else {
            continue
        }
    }

    // 결과선언
    var result: String = ""
    // R과 T
    if resultDict["R"]! < resultDict["T"]! {
        result += "T"
    } else if resultDict["R"]! > resultDict["T"]! {
        result += "R"
    } else {
        result += "R"
    }

    // C와 F
    if resultDict["C"]! < resultDict["F"]! {
        result += "F"
    } else if resultDict["C"]! > resultDict["F"]! {
        result += "C"
    } else {
        result += "C"
    }

    // J와 M
    if resultDict["J"]! < resultDict["M"]! {
        result += "M"
    } else if resultDict["J"]! > resultDict["M"]! {
        result += "J"
    } else {
        result += "J"
    }

    // A와 N
    if resultDict["A"]! < resultDict["N"]! {
        result += "N"
    } else if resultDict["A"]! > resultDict["N"]! {
        result += "A"
    } else {
        result += "A"
    }

    return result
}