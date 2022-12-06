import Foundation

// 첫 통과 풀이
func firstSolution(_ dots:[[Int]]) -> Int {
    var arr1:[Int] = []
    var arr2:[Int] = []
    
    for i in 0...3 {
        arr1.append(dots[i][0])
        arr2.append(dots[i][1])
    }
    return (arr1.max()! - arr1.min()!) * (arr2.max()! - arr2.min()!)
}

// sort를 이용한 풀이
func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
    return (dots.last![0] - dots.first![0]) * (dots.last![1] - dots.first![1])
}
