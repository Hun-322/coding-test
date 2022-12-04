// 첫 통과 풀이
func firstSolution(_ s:String, _ n:Int) -> String {
    var answer = ""
    
    for i in s {
        // z -> a 무한반복, 대소문자 고려
        
        // 공백
        if i.asciiValue! == 32 {
            answer += String(i)
        }
        
        // 대문자
        if i.asciiValue! > 64 && i.asciiValue! < 91{
            if (Int(i.asciiValue!)+n) > 90 {
                answer += String(UnicodeScalar(Int(i.asciiValue!) + n - 26)!)
            } else {
                answer += String(UnicodeScalar(Int(i.asciiValue!) + n)!)
            }
        }
        // 소문자
        if i.asciiValue! > 96 && i.asciiValue! < 123{
            if (Int(i.asciiValue!)+n) > 122 {
                answer += String(UnicodeScalar(Int(i.asciiValue!) + n - 26)!)
            }else {
                answer += String(UnicodeScalar(Int(i.asciiValue!) + n)!)
            }
        }
    }
    return answer
}

// while문 map사용
func solution(_ s:String, _ n:Int) -> String {
    return s.utf8.map{
        var code = Int($0)
        switch code {
        case 65...90:
            code = (code + n - 65) % 26 + 65
        case 97...122:
            code = (code + n - 97) % 26 + 97
        default:
            break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
}
// 다른사람의 숏 코딩, 경이롭다.
func ShortSolution(_ s:String, _ n:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return String(s.map {
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        let letter = alphabets[(index + n) % alphabets.count]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    })
}
