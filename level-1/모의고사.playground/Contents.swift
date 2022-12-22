import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var dict:[Int:Int] = [:]
    var math1 = [1, 2, 3, 4, 5]
    var math2 = [2, 1, 2, 3, 2, 4, 2, 5]
    var math3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    for i in answers.indices {
        if answers[i] == math1[i % math1.count] {dict[1, default: 0] += 1}
        if answers[i] == math2[i % math2.count] {dict[2, default: 0] += 1}
        if answers[i] == math3[i % math3.count] {dict[3, default: 0] += 1}
    }
    
    var max = dict.max(by: {$0.value < $1.value})!.value
    var maxValue = dict.filter({ $0.value == max}).keys.sorted()
    
    return maxValue
}
