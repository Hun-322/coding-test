import UIKit

// 첫 통과 풀이
func firstSolution(_ n:Int) -> Int {
    let rad = String(n, radix:2).filter{$0 == "1"}.count
    var answer:Int = n+1
    
    while true {
        if rad == String(answer, radix:2).filter({ $0 == "1" }).count {
            return answer
        }
        answer += 1
    }
    return 0
}

// nonzeroBitCount(Int를 2진수로 바꾸고, 1의 갯수만 리턴)사용
func solution(_ n:Int) -> Int {
    var answer:Int = n+1
    
    while true {
        if answer.nonzeroBitCount == n.nonzeroBitCount {
            return answer
        }
        answer += 1
    }
    return 0
}
