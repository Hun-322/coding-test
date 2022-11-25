import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var arr2D = Array(repeating: Array(repeating: 0, count: n), count: num_list.count / n)
    var count = 0
    for i in arr2D.indices{
        for j in arr2D[i].indices {
            arr2D[i][j] = num_list[count]
            count += 1
        }
    }
    return arr2D
}
