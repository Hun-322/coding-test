// 첫 통과 답안
func firstSolution(_ n:Int) -> String {
    var answer:String = ""
    for i in 1...n {
        if i % 2 == 1 {
            answer += "수"
        } else {
            answer += "박"
        }
    }
    return answer
}

// 숏코딩
func ShortSolution(_ n:Int) -> String {
    return (0..<n).map{($0 % 2 == 0 ? "수":"박")}.reduce("", +)
}
// 색다른 풀이
func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}
