import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var temp = ""
    var answer = 0
    var t = t.map{$0}
    
    for i in 0..<t.count-p.count+1{
        temp = String(t[i...p.count+i-1])
        Int(temp)! <= Int(p)! ? (answer += 1) : (answer += 0)
        temp = ""
    }
    
    return answer
}
