import Foundation

// 내가 푼 코드 X -> 생각없이 질문하기를 봐버렸는데 이보다 좋은 코드가 생각나지 않았다 ㅠ_ㅠ
func solution(_ n:Int) -> Int {
    var answer = 0
    
    for _ in 1...n {
        answer += 1
        while answer % 3 == 0 || String(answer).contains("3") {
            answer += 1
        }
    }
    return answer
}
