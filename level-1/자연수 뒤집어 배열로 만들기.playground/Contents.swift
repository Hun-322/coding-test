func solution(_ n:Int64) -> [Int] {
    return String(n).map{ Int(String($0))! }.reversed()
}

// 다른사람 모범 답안
// map대신 compactMap으로 옵셔널 바인딩까지 처리하기
// n을 문자열로 처리 후 hexDigitValue으로 정수인지 아닌지 체크를하고, 정수일경우 그 Int형을 반환
// 그 후 reversed()로 뒤집기
func solution2(_ n:Int64) -> [Int] {
    return  "\(n)".compactMap { $0.hexDigitValue }.reversed()
}
