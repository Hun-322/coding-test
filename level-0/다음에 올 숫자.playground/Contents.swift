import Foundation

func solution(_ common:[Int]) -> Int {
    return (common[1] - common[0]) == (common[2] - common[1]) ? common.last! + common[1] - common[0] : common.last! * common[1] / common[0]
}

solution([1, 2, 3, 4])
solution([2, 4, 8])
