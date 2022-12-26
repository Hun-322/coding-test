import Foundation
// 시간 초과
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dict:[Int:Float] = [:]
    
    for i in 1...N{
        var fraciton = stages.filter{$0 >= i}.count
        dict[i] = Float(fraciton - (stages.filter{$0 > i}.count)) / Float(fraciton)
    }
    
    return dict.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
}
