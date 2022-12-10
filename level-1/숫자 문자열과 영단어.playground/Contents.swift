import Foundation

func solution(_ s:String) -> Int {
    var arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var answer = s
    
    for i in 0..<arr.count {
        answer = answer.replacingOccurrences(of: arr[i], with: String(i))
    }
    return Int(answer)!
}
