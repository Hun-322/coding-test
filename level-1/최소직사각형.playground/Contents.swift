import Foundation
// 첫 통과 풀이 (max비교대상을 만들 생각을 못했다.)
func solution(_ sizes:[[Int]]) -> Int {
    var bArr:[Int]  = []
    var sArr:[Int]  = []
    
    for i in sizes.indices{
        sizes[i][0] > sizes[i][1] ? (bArr.append(sizes[i][0])) : (bArr.append(sizes[i][1]))
        sizes[i][0] > sizes[i][1] ? (sArr.append(sizes[i][1])) : (sArr.append(sizes[i][0]))
    }
    return bArr.sorted(by:>)[0] * sArr.sorted(by:>)[0]
}

// 함수를 잘 이용하자 ^_^...
func goodSolution(_ sizes:[[Int]]) -> Int {
    var maxNum = 0
    var minNum = 0

    for size in sizes {
        maxNum = max(maxNum, size.max()!)
        minNum = max(minNum, size.min()!)
    }
    return maxNum * minNum
}
