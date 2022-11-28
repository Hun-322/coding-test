import Foundation

func solution(_ my_string:String) -> Int {
    // 제한사항-> 문자열의 시작과 끝에는 공백이 없습니다, my_string의 숫자와 연산자는 공백 하나로 구분되어 있습니다. -> 공백 기준으로 잘라주기
    var arr = my_string.components(separatedBy: " ")
    var answer = Int(arr[0])!
    // arr[i] 번째에는 항상 수식이 오니까 arr[i+1]을 수식에 맞게 연산해주기
    for i in stride(from: 1, to: arr.count, by: 2){
        if arr[i] == "+" {
            answer += Int(arr[i+1])!
        } else {
            answer -= Int(arr[i+1])!
        }
    }
    return answer
}
