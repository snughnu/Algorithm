import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> (Int) {
    
    var array = [Int: Int]()
    var sum = 0
    
    //1~number 각각의 약수의 개수를 구하고
    for num in 1...number {
        var count = 0
        let sqrt = Int(Double(num).squareRoot())
        for i in 1...sqrt {
            if num % i == 0 {
                count += 1
                if i != num / i {
                    count += 1
                }
            }
        }
        array[num] = count
    }
    //dictionary 배열로 1~number을 key로, 약수의 개수를 값으로 저장함
    
    //if 약수의 개수가 limit 초과이면 값을 power로 바꿈
    for (key, value) in array {
        if value > limit {
            array[key] = power
        }
        //sum을 같이 구현해서 for문을 하나 없앰
        sum += array[key]!
    }

    
    return sum
}
