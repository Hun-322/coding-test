import Foundation
// 첫 통과 풀이
func solution(_ spell:[String], _ dic:[String]) -> Int {
    var s = spell.sorted().joined()
    var d = dic.map{String($0.sorted())}
    
    for i in 0..<d.count{
        if d[i].contains(s) {
            return 1
        }
    }
    return 2
}

// 숏 코딩
func ShortSolution(_ spell: [String], _ dic: [String]) -> Int {
    dic.map { String($0.sorted()) }.contains(spell.sorted().joined()) ? 1 : 2
}
