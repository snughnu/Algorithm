//
//  main.swift
//  Palindrome
//
//  Created by 김성훈 on 8/31/24.
//

import Foundation

func recursive(_ chars: [Character], _ l: Int, _ r: Int, _ counting: inout Int) -> Int {
    counting += 1
    if l >= r {
        return 1
    } else if chars[l] != chars[r] {
        return 0
    } else {
        return recursive(chars, l + 1, r - 1, &counting)
    }
}

func isPalindrome(_ input: String) -> String {
    var counting = 0
    let chars = Array(input)  // 문자열을 배열로 변환
    let result = recursive(chars, 0, chars.count - 1, &counting)
    return "\(result) \(counting)"
}

if let inputTestCount = readLine(), let testCount = Int(inputTestCount) {
    var results = [String]()
    
    for _ in 0..<testCount {
        if let input = readLine() {
            results.append(isPalindrome(input))
        }
    }
    
    for result in results {
        print(result)
    }
}
