import Foundation

// 첫 통과 풀이
// 이메일 오류로 재 커밋
func solution(_ num:Int, _ total:Int) -> [Int] {
    var sum = num * (1 + num) / 2
    var start = (total - sum) / num
    var answer:[Int] = []
    
    for i in 1...100 {
        answer.append(start+i)
        
        if answer.reduce(0,+) == total {
            return answer
        }
    }
    return []
}

// 최종 풀이
func finalSolution(_ num:Int, _ total:Int) -> [Int] {
    let mid = total / num
    let min = num % 2 == 1 ? mid - (num / 2) : mid - (num / 2 - 1)
    let max = num % 2 == 1 ? mid + (num / 2) : mid + (num / 2)
    return Array(min...max)
}
