import Foundation

// 첫 통과 풀이
func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ").map{$0.lowercased().map{$0}}
    var answer = ""
    
    for i in arr {
       for j in 0..<i.count{
          if j == 0 {
              answer += i[0].uppercased()
          } else {
              answer += String(i[j])
          }
       }
        answer += " "
    }
    
    return String(answer.dropLast())
}



