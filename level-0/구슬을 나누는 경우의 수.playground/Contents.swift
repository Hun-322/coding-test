import Foundation

// dfs 방식
func solution(_ balls:Int, _ share:Int) -> Int {
    return dfs(balls, share)
}

func dfs(_ n : Int, _ r: Int) -> Int {
  if n == r { return 1 }
  if r == 1 { return n }
    
  return dfs(n-1, r-1) + dfs(n-1, r)
}

// 다른 사람의 답안
func secondSolution(_ balls:Int, _ share:Int) -> Int64 {
    var min = balls - share < share ? balls - share : share

    var answer: Int64 = 1
    if min == 0 { return 1 }
    for i in 1...min {
        answer *= Int64(balls-min+i)
        answer /= Int64(i)
    }
    return answer
}
