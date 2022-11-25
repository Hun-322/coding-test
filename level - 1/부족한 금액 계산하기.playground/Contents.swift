import Foundation

// 내 통과 답안
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice = (1...count).map{ $0 * price }.reduce(0,+)
    return totalPrice > money ? Int64(totalPrice - money) : Int64(0)
}

// 수학적 사고가 들어간 깔끔한 모범 예시
func goodSolution(_ price:Int, _ money:Int, _ count:Int) -> Int{
    return max((count + 1) * count / 2 * price - money , 0)
}
