//
//  main.swift
//  Fibonacci
//
//  Created by 김성훈 on 8/31/24.
//

import Foundation

func fibonacci(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return (fibonacci(n-1) + fibonacci(n-2))
    }
}

if let input = readLine(), let n = Int(input) {
    print(fibonacci(n))
}
