import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int{
    let a = A.sorted{$0 < $1}
    let b = B.sorted{$0 > $1}
    var sum = 0
    
    for i in 0..<a.count{
        sum += a[i] * b[i]
    }
    
    return sum
}
