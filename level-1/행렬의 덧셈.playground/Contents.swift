// 내가 통과한 답안
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = arr1
    
    for i in arr1.indices {
        for j in 0..<arr1[i].count {
            answer[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return answer
}
// zip을 사용한 답안
func shortsolution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}
