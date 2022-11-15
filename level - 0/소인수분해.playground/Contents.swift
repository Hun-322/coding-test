import Foundation

func solution(_ n:Int) -> [Int] {
    // n의 약수 찾기
    var divisorN = (2...n).filter{ n % $0 == 0 }
    var answer:Set<Int> = []
    var n = n
    // n % i == 0이면 계속 i로 나누고, n % i != 0 이면 다음 i로 넘어가기 반복
    for i in divisorN {
        while n % i == 0 {
            n /= i
            answer.insert(i)
        }
    }
    // 순서없는 Set을 Array로 변환 후 오름차순으로 정렬
    return Array(answer).sorted()
}
