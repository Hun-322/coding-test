import Foundation
// 첫 통과 답안
func solution(_ my_string:String) -> Int {
    var str = my_string
    // str 뒤에 a를 추가해서 원래 마지막에 숫자가 있는 경우 체크해주기
    str += "a"
    var answer = 0
    var temp = 0
    
    for i in 0..<str.count {
        if Array(str)[i].isNumber {
            temp = temp*10 + Int(String(Array(str)[i]))!
        } else {
            answer += temp
            temp = 0
        }
    }
    return answer
}
