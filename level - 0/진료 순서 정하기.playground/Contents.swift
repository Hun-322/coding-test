import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var answer: [Int] = []
    // sorted로 응급환자 내림차순으로 정리
    let emerSort = emergency.sorted(by: >)
    
    // 순번 정해주기 emergency[0]이 emerSort[j] 와 같으면 순번(j+1)으로 배정
    for i in 0..<emergency.count {
        for j in 0..<emergency.count {
        if emergency[i] == emerSort[j] {
            answer.append(j+1)
            }
        }
    }
    return answer
}

// 숏 코딩
func solution2(_ emergency:[Int]) -> [Int] {
    return emergency.map {emergency.sorted(by: >).firstIndex(of: $0)! + 1}
}
