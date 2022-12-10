import Foundation

func solution(_ chicken:Int) -> Int {
    var chicken = chicken
    var answer = 0
    
    while chicken >= 10 {
        answer += chicken / 10
        chicken = answer + chicken % 10
    }
    return answer
}
