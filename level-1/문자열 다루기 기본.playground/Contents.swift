// 내 풀이
func solution(_ s:String) -> Bool {
    return s.count == 4 || s.count == 6 ? s.allSatisfy({$0.isNumber}) : false
}

// 모범 답안
// 쉽게 쉽게 생각하자...
func goodSolution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
