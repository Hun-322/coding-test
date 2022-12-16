import Foundation

func solution(_ array:[Int]) -> Int {
    var dict:[Int:Int] = [:]
    
    for i in array {
    dict[i, default: 0] += 1
    }
    
    var max = dict.max(by: {$0.value < $1.value})!.value
    var maxValue = dict.filter({ $0.value == max}).keys.sorted()
    
    return maxValue.count != 1 ? -1 : maxValue[0]
}
