// 내 첫 통과 답안
func firstSolution(_ s:String) -> String {
    return s.sorted(by: >).map{String($0)}.joined()
}

// 숏 코딩
func solution(_ s:String) -> String { String(s.sorted{$0 > $1}) }
