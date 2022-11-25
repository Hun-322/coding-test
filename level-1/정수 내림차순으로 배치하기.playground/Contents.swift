// 내 답안
func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).map{String($0)}.sorted(by: >).joined())!
}
// 모범 답안
func goodSolution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted{ $0 > $1 }))!
}
