//
//  main.swift
//  factorial
//
//  Created by 김성훈 on 8/31/24.
//

import Foundation

func factorial(_ n: Int) -> Int {
    if n == 0 { // base case: !이 1까지 곱해진다는 것과 0! = 1임을 사용
        return 1
    } else { // recursive case
        return n * factorial(n-1)
    }
}

if let input = readLine(), let n = Int(input) {
    print(factorial(n))
}

// if let input = readLine()
    // 사용자가 콘솔에 입력하면 input에 문자열로 초기화됨
    // 옵셔널 바인딩: input에 nil이 아닐 때만 input에 값을 초기화하고 다음 문장을 실행함
// let n = Int(input)
    // input을 Int형으로 변환함 실패시 nil 이 반환, 성공시 Int형으로 변환 후 다음 문장을 실행
