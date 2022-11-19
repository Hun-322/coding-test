func fisrtSolution(_ phone_number:String) -> String {
    var front = String(repeating: "*", count: phone_number.count-4)
    var back = phone_number.map{String($0)}[phone_number.count-4...phone_number.count-1].joined()
    
    return front+back
}

// 모범 답안
// 뒷 부분을 suffix메소드 사용
func goodSolution(_ phone_number:String) -> String {
    return String(repeating:"*", count:phone_number.count-4)+phone_number.suffix(4)
}
