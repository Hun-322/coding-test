import Foundation

func solution(_ n:Int64) -> Int64 {
    return sqrt(Double(n)) - floor(sqrt(Double(n))) == 0 ? Int64(pow(sqrt(Double(n))+1, 2)) : -1
}

// 모범 답안
// 코드는 내용은 같지만 가독성의 차이가 심하다.
func solution2(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t * t == n ? (t+1)*(t+1) : -1
}
