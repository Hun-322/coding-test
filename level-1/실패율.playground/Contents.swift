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

// 시간 초과
func solution2(_ N:Int, _ stages:[Int]) -> [Int] {
    var dict:[Int:Float] = [:]
    var num = 0
    var num2 = 0
    
    for i in 1...N{
        for j in stages{
            if j >= i {
                num += 1
            }
            
            if j > i {
                num2 += 1
            }
        }
        
        dict[i] = Float(num - num2) / Float(num)
        num = 0
        num2 = 0
    }
    
    return dict.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
}

// 시간 초과 5번 빼고 다 통과
// 였는데, 다시 채점하니까 통과됐다...

func solution3(_ N:Int, _ stages:[Int]) -> [Int] {
    var tuple = [(Int,Float)]()
    var num = 0
    var num2 = 0
    
    for i in 1...N{
        for j in stages{
            if j > i {
                num += 1
                num2 += 1
            } else if j == i {
                num += 1
            }
        }
        
        tuple.append((i,Float(num - num2) / Float(num)))
        num = 0
        num2 = 0
    }
    
    return tuple.sorted(by: {$0.1 > $1.1 }).map{ $0.0 }
}


