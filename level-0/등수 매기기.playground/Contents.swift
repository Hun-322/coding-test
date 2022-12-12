import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var answer:[Int] = []
    var rank = 1
    for i in 0..<score.count {
        for j in 0..<score.count {
            if (score[i][0]+score[i][1]) < (score[j][0]+score[j][1]) {
                rank += 1
            }
        }
        answer.append(rank)
        rank = 1
    }
    return answer
}

// 숏 코딩
func shortSolution(_ score: [[Int]]) -> [Int] {
    return score.map { $0.reduce(0, +)}.map { score.map {$0.reduce(0, +)}.sorted(by: >).firstIndex(of: $0)! + 1 }
}
