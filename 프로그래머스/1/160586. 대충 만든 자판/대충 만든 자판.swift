import Foundation
func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
/*
    (i를 1부터 최대 100까지 반복) {
        (j를 1부터 최대 100까지 반복) {
            (k를 1부터 최대 100까지 반복) {
                targets 배열의 i번째 원소의 j번째 문자가
                keymap 배열의 k번째 원소의 X번째에 존재
                result[i] += x

                if 존재X {return -1}
                
            }
        }
            
    }
    
    return [result]
 
 */
    var result:[Int] = []
    for target in targets {
        var totalPress = 0
        
        for char in target {
            var minPress = Int.max
            
            for key in keymap {
                if let index = key.firstIndex(of: char) { //firstIndex(of:)는 문자열에서 특정 문자가 처음 등장하는 위치를 반환
                    let press = key.distance(from: key.startIndex, to: index) + 1
                    minPress = min(minPress, press)
                }
            }
            
            if minPress == Int.max {
                totalPress = -1
                break
            } else {
                totalPress += minPress
            }
        }
        
        result.append(totalPress)
    }
    
    return result
}

