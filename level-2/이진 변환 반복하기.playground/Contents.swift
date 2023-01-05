import Foundation

// 첫 통과 풀이
func solution(_ s:String) -> [Int] {
    var answer1 = 0
    var answer2 = 0
    var temp = s
    
    while temp != "1" {
        answer2 += temp.filter{$0 == "0"}.count
        answer1 += 1
        temp = String(temp.count - temp.filter{$0 == "0"}.count, radix: 2)
    }
    return [answer1,answer2]
}

// replacingOccurrences를 사용한 다른사람의 풀이
// 근데 속도는 느리다!
func goodSolution(_ s: String) -> Array<Int> {
    var copiedS = s
    var removedZero = 0
    var count = 0

    while copiedS != "1" {
        removedZero += copiedS.replacingOccurrences(of: "1", with: "").count
        copiedS = String(copiedS.replacingOccurrences(of: "0", with: "").count, radix: 2)
        count += 1
    }
    return [count, removedZero]
}
