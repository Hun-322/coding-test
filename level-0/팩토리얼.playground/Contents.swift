import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    for i in 1...10 {
        if n >= factorial(i) {
            answer = i
        } else {
            continue
        }
    }
    return answer
}

func factorial(_ num:Int) -> Int {
    if num <= 1 { return  1}
    return num * factorial(num - 1)
}
