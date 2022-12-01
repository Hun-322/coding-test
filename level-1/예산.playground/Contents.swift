import UIKit

// 첫 통과 코드
func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    var dSort = d.sorted()
    var result = 0
    
    for i in 0..<d.count {
        if budget >= dSort[i]{
            budget -= dSort[i]
            result += 1
        }
    }
    return result
}

// filter 사용
func shortsolution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    return d.sorted().filter{
        budget -= $0
        return budget >= 0
    }.count
}
