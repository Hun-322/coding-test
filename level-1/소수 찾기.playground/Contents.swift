// 에라토스테네스의 체 사용
func solution(_ n:Int) -> Int {
    var arr = Array(repeating: false, count: n+1) // count를 n+1를 쓰는 이유는 index[0],index[1]은 사용 안하기 때문에
    var prime:[Int] = []
    
    for i in 2...n {
        if arr[i] == false {
            for j in stride(from: i, through: n, by: i) {
                arr[j] = true
            }
            prime.append(i)
        }
    }
    return prime.count
}

solution(10)
