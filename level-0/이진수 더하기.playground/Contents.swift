import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    var answer = ""
    var sum = Int(bin1,radix:2)! + Int(bin2,radix:2)!
    answer = String(sum,radix:2)
    
    return answer
}
