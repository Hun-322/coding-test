import Foundation

// 첫 통과 코드
func firstSolution(_ a:[Int], _ b:[Int]) -> Int {
    var tu = (a,b)
    var answer:Int = 0
    for i in 0..<a.count {
        answer += tu.0[i] * tu.1[i]
    }
    return answer
}

// 다른사람이 푼 숏 코딩
// zip -> 두 개의 기본 시퀀스로 만들어진 시퀀스 쌍을 만듭니다.
func shortSolution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).map(*).reduce(0, +)
}
// 또 다른 풀이( forEach사용 )
func solution(_ a:[Int], _ b:[Int]) -> Int {
    var answer = 0
    a.indices.forEach { answer += {i, j -> Int in i * j }(a[$0], b[$0])}
    return answer
}
