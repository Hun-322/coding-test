import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var s = 0
    if A == B {
        return 0
    }
    if let rangeS = (B+B).range(of: A) {
    s = (B+B).distance(from: (B+B).startIndex, to: rangeS.lowerBound)
}
    return s == 0 ? -1 : s
}

// 다른사람의 모범 답안
func goodSolution(_ A:String, _ B:String) -> Int {
    let arr = (A+A).components(separatedBy: B)
    return arr.count == 1 ? -1 : arr[1].count
}
