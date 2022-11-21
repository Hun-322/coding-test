import Foundation

// 통과 답안
func solution(_ numbers:[Int]) -> Int {
    return (0...9).filter{!numbers.contains($0)}.reduce(0,+)
}
// 다른 모범 답안
// 범위가 0...9이기 때문에 (0...9)총합에서 현재 수 들의 합을 뺀 발상
func goodsolution(_ numbers:[Int]) -> Int {
    return 45-numbers.reduce(0, +)
}
