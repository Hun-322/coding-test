func solution(_ x:Int) -> Bool {
    return x % String(x).map{Int(String($0))!}.reduce(0,+) == 0
}

// 고차함수 안쓰고 만든 코드
func solution2(_ x:Int) -> Bool {
    var sum = 0
    
    for i in String(x) {
        sum += Int(String(i))!
    }
    return x % sum == 0
}
