func solution(_ schedules: [Int], _ timelogs: [[Int]], _ startday: Int) -> Int {
    // schedules를 순회하면서
        // 출근 인정 시각을 정의함
            // schedule + 10 인데,
            // 분이 59보다 크면
                // 시간을 올리고, 분 - 60하기
    
    // timelogs를 순회
        // startday를 가지고 토요일 / 일요일이 언젠지 파악해야함
            // startday가 7이면 
                // 토요일인덱스 = 6
                // 일요일인덱스 = 0
            // 그 이외에는
                // 토요일인덱스 = 6-startday
                // 일요일인덱스 = 토요일인덱스+1

        // timelogs[i][토요일 / 일요일] = 0 으로 변경함
        // 첫번째 행(첫번째 사람)의 출석인정을 확인해야함 -> 순회
            // 출근 인정 시각보다 큰 수를 가지면
                // result -= 1 (result는 schedules.count로 선언해두기)
    
    // return result

    // 출근 인정시각 정의하기
    var schedules = schedules
    for i in (0..<schedules.count) {
        if (schedules[i] + 10) % 100 > 59 {
            schedules[i] = schedules[i] + 100 - 50
        } else {
            schedules[i] = schedules[i] + 10
        }
    }

    // timelogs 순회하면서 체크
    var result: Int = schedules.count
    var timelogs = timelogs
    outerLoop: for i in (0..<timelogs.count) {
        // 토요일, 일요일은 출근시간 0으로 만들기
        let saturdayIndex: Int = (startday == 7) ? 6 : 6-startday
        let sundayIndex: Int = (startday == 7) ? 0 : saturdayIndex + 1
        timelogs[i][saturdayIndex] = 0
        timelogs[i][sundayIndex] = 0

        // 지각하면 인원수 줄이기
        for j in (0..<7) {
            let time = timelogs[i][j]
            if schedules[i] < time {
                result -= 1
                continue outerLoop
            }
        }
    }

    return result
}