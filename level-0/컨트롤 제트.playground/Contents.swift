import UIKit
// 첫 통과 풀이
func solution(_ s:String) -> Int {
    var slice = s.components(separatedBy:" ")
    var answer = 0
 
    for i in slice.indices {
        slice[i] == "Z" ? (answer -= Int(slice[i-1])!) : (answer += Int(slice[i])!)
    }
    return answer
}

// 다른 사람의 모범 답안
func goodSolution(_ s: String) -> Int {
    var stack = [Int]()

    for w in s.components(separatedBy: [" "]) {
        if w == "Z" {
            stack.popLast()
        } else {
            stack.append(Int(w)!)
        }
    }
    return stack.reduce(0, +)
}
