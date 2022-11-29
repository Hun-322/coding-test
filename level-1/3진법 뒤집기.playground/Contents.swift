import Foundation
// 첫 통과 답안 radix 사용
func solution(_ n:Int) -> Int {
    var answer = ""
    for i in String(n, radix: 3).reversed(){
        answer += String(i)
    }
    return Int(answer, radix: 3)!
}

// radix 미사용
func secondSolution(_ n:Int) -> Int {
    var n = n
    var arr:[Int] = []
    
    while n > 0 {
        arr.append(n % 3)
        n /= 3
    }
    
    var temp = 0
    
    for i in 1...arr.count{
     temp += arr[i-1] * Int(pow(3, Double(arr.count-i)))
    }
    return temp
}
