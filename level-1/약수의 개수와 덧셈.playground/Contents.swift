import Foundation

// 내 통과 답안
func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        if (1...i).filter({ i % $0 == 0 }).count % 2 == 0 {
            answer += i }
        else{
            answer -= i
        }
    }
    return answer
}

// 숏코딩
func Shortsolution(_ left:Int, _ right:Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}
