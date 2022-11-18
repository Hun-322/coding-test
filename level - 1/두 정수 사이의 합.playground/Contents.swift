// 첫 접근 방식 테스트 O(n)
// 4번째 테스트 케이스 시간초과 (-10,000,000 , 10,000,000)인거 같다.

func firstSolution(_ a:Int, _ b:Int) -> Int64 {
  return  a > b ? Int64((b...a).reduce(0,+)) : Int64((a...b).reduce(0,+))
}

// 두번째 방식 가우스 덧셈 O(1)
// 오류 , 컴파일러가 적절한 시간 내에 이 표현식에 대한 타입 추론을 할 수가 없다. 표현식을 쪼개야한다.
func SecondSolution(_ a:Int, _ b:Int) -> Int64 {
    return b > a ? (a+b) * (b - a + 1) / 2 : (a+b) * (a - b + 1) / 2
}

// 통과 답안
// 첫 번째 방식을 간소화해서 풀었다.
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((a>b ? b...a : a...b).reduce(0,+))
}

// 모범 답안
// 두번째 방식 표현식을 간소화해서 푼 풀이
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}
