func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr:[Int64] = []
    if x == 0 {
        for i in 0..<n{
         arr.append(0)
        }
    } else {
    for i in stride(from: x,to: x*(n+1),by: x){
        arr.append(Int64(i))
        }
    }
    return arr
}
// 숏코딩
func shortSolution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}
