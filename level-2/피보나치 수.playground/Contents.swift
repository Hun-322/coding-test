import UIKit

// 첫 시도 코드
// 재귀함수 사용 -> 시간초과
func solution(_ n:Int) -> Int {
    return fibo(n)
}

func fibo(_ num:Int) -> Int{
    if num == 0 || num == 1 {
        return num
    }else {
        return fibo(num-1) + fibo(num-2)
    }
}

// 두 번째 코드
// DP(Dynamic Programming)사용
// 테스트케이스 7~14 (signal: illegal instruction (core dumped)) 오버플로우 발생
func secoundSolution(_ n:Int) -> Int {
    var answer = 0
    var a = 0
    var b = 1
    
    for _ in 2...n {
        answer = a + b
        a = b
        b = answer
    }
    return answer % 1234567
}
// 마지막 코드
// 두 번째 코드 + 연산 분리 (a + b) % m = ((a % m) + (b % m)) % m 사용
func finalSolution(_ n:Int) -> Int {
    var answer = 0
    var a = 0
    var b = 1
    
    for _ in 2...n {
        answer = (a % 1234567) + (b % 1234567)
        a = b
        b = answer
    }
    return answer % 1234567
}
