// 첫번째, 테스트 케이스 1번 시간초과
func firstSolution(_ arr:[Int]) -> [Int] {
    return arr.count < 2 ? [-1] : arr.filter{arr.min() != $0}
}

// 두번째, 테스트 케이스 1번 시간초과
func secondSolution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    return arr.filter{$0 > arr.min()!}
}

// 최종 정답, 18번 줄에서 index위치 찾는 함수를 처음에 answer.index(of:arr.min()!)! )를 사용했는데,
// firstIndex(of:arr.min()!)!)가 속도가 더 빨라서 firstIndex로 수정해주었다.
func solution(_ arr:[Int]) -> [Int] {
    var answer = arr
    answer.remove( at:answer.firstIndex(of:arr.min()!)! )
    return arr.count == 1 ? [-1] : answer
}
