import Foundation

func solution(_ polynomial:String) -> String {
    // 공백 기준으로 나눠주기
    var array = polynomial.components(separatedBy: " ")
    // 자연수 더하기
    var natural = String(array.filter{Int($0) != nil}.map{Int($0)!}.reduce(0,+))
    // x만 걸러주기
    var xArray = array.filter{$0.contains("x")}.map{$0.map{$0}}
    var sum = 0
    
    // x의 계수 구하기
    for i in xArray {
        if i.count == 3 {
            sum += Int(String(i[0]))! * 10 + Int(String(i[1]))!
        } else if i.count == 2{
            sum += Int(String(i[0]))!
        } else {
            sum += 1
        }
    }
    
    // x가 있다 && 자연수가 있다 , x만 있을때, 자연수만 있을때
    if sum != 0 && natural != "0"{
        return sum == 1 ? ("x" + " + " + natural) :(String(sum) + "x" + " + " + natural)
    } else if sum != 0 {
        return sum == 1 ? "x" : (String(sum) + "x")
    } else {
        return natural
    }
}

// 다른 사람의 replacingOccurrences사용 풀이
func goodSolution(_ polynomial: String) -> String {
    var xCount = 0
    var num = 0

    for s in polynomial.split(separator: " ") {
        if s.contains("x") {
            xCount += (s == "x" ? 1 : (Int(s.replacingOccurrences(of: "x", with: "")) ?? 0))
        } else if s != "+" {
            num += Int(s) ?? 0
        }
    }
    return (xCount != 0 ? xCount > 1 ? "\(xCount)x" : "x" : "") + (num != 0 ? "\((xCount != 0 ? " + " : ""))\(num)" : xCount == 0 ? "0" : "")
}
