import Foundation

// 내가 통과한 풀이
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var absolutes = absolutes
    
    for i in 0..<signs.count {
        if signs[i] == false{
            absolutes.append(absolutes[i] * -2)
        }
    }
    return absolutes.reduce(0,+)
}

// 모범답안
// 오늘도 한 수 배우고간다.
func goodsolution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return (0..<absolutes.count).map{ signs[$0] ? absolutes[$0] : -absolutes[$0]}.reduce(0,+)
}
