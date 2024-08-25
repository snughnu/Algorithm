import Foundation

//컴퓨터가 3개의 정수를 랜덤으로 생성 (조건: 1~9의 정수, 3개는 다른 숫자)
    //var answer1 = random(1~9)
    //var answer2 = random(1~9)
    //var answer3 = random(1~9)
var answer1 = 0
var answer2 = 0
var answer3 = 0
repeat {
    answer1 = (Int).random(in: 1...9)
    answer2 = (Int).random(in: 1...9)
    answer3 = (Int).random(in: 1...9)
} while (answer1 == answer2 || answer1 == answer3 || answer2 == answer3)


//입력 (조건: 띄어쓰기 구분)
    //readLine.component(separatedBy " ")
    //var (guess1, guess2, guess3) = [0], [1], [2]
var (guess1, guess2, guess3) = (0, 0, 0)
func input() -> (Int, Int, Int) {
    print("1~9범위의 3개의 정수를 입력해주세요")
    let input = readLine()!.components(separatedBy: [" "])
    let guess1 = Int(input[0])!
    let guess2 = Int(input[1])!
    let guess3 = Int(input[2])!
    
    return (guess1, guess2, guess3)
}


//입력 검증 - 함수로
    //func solution(answer1~3, guess1~3) {
    //  if(answer1 == guess1) {strikeCount += 1}
    //
    //
    //  if(guess1 == answer2 || guess1 == answer3) {ballCount += 1}
    //  if(guess2 == answer1 || guess2 == answer3) {ballCount += 1}
    //  if(guess3 == answer1 || guess3 == answer2) {ballCount += 1}
    //  return (strikeCount, ballCount)
    //  }
func solution(_ answer1: Int, _ answer2: Int, _ answer3: Int, _ guess1: Int, _ guess2: Int, _ guess3: Int) -> (Int, Int) {
    var (strikeCount, ballCount) = (0, 0)
    
    if (guess1 == answer1) {strikeCount += 1}
    if (guess2 == answer2) {strikeCount += 1}
    if (guess3 == answer3) {strikeCount += 1}
    if (guess1 == answer2 || guess1 == answer3) {ballCount += 1}
    if (guess2 == answer1 || guess2 == answer3) {ballCount += 1}
    if (guess3 == answer1 || guess3 == answer2) {ballCount += 1}
    
    return (strikeCount, ballCount)
}
var (strikeCount, ballCount) = solution(answer1, answer2, answer3, guess1, guess2, guess3)


//출력

//누적 출력을 위한 배열형성
    //각 요소가 튜플로 구성(누적 때문에)
    //순서대로 시도횟수, 추측3개, 스트라이크 개수, 볼 개수가 저장됨
var trys: [(Int, Int, Int, Int, Int, Int)] = []


//게임시작
//1~9번 반복
for tried in 1...9 {
    //입력과 입력검증
    let (guess1, guess2, guess3) = input()
    let (strikeCount, ballCount) = solution(answer1, answer2, answer3, guess1, guess2, guess3)
    
    //현재 시도 결과를 trys 배열에 추가
        //append를 써서 튜플로 배열에 추가
    trys.append((tried, guess1, guess2, guess3, strikeCount, ballCount))
    
    //누적된 결과 출력
    print("시도\t\t추측\t\t\t결과")
    for tried in trys {
        print("\(tried.0)\t\t\(tried.1) \(tried.2) \(tried.3)\t\t\(tried.4)S \(tried.5)B")
    }
    
    // 3스트라이크일 때 승리 메시지 출력 후 게임 종료
    if strikeCount == 3 {
        print("헉 정답입니다.")
        break
    } else if tried == 9 {
        print("게임 끝! 정답은 \(answer1) \(answer2) \(answer3)였습니다.")
    }
}
