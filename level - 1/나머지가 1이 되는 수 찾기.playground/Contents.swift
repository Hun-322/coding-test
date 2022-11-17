import Foundation

func solution(_ n:Int) -> Int {
    return (2...n-1).map{$0}.filter{n % $0 == 1}.min()!
}

// 모범 답안
func goodSolution(_ n: Int) -> Int {
    var answer = 1

    while n % answer != 1 {
        answer += 1
    }
    return answer
}

