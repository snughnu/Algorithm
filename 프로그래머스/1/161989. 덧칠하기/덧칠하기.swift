import Foundation

func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    var counting = 0
    var i = 0
    
    repeat {
        counting += 1
        
        // 시작지점을 바꿈
        let start = section[i]
        
        repeat {
            i += 1
        } while i < section.count && section[i] < start + m
        
    } while i < section.count
    
    return counting
}
