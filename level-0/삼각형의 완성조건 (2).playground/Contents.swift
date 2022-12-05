import UIKit
// 첫 통과 답안
// sides.max - sides.min < result < sides.max + sides.min
// 1 < result < sides.max + sides.min - (sides.max - sides.min)
// result < sides.max + sides.min - (sides.max - sides.min) -1
// result < sides.min * 2 - 1
func solution(_ sides:[Int]) -> Int {
    var sLine = sides.sorted()[0]
    return sLine * 2 - 1
}

