// 첫 통과 답안
func solution(_ s:String) -> String {
    return s.count % 2 == 0 ? String(Array(s)[s.count / 2 - 1...s.count / 2]): String(Array(s)[s.count / 2])
}

// 가독성 높히기
func secondSolution(_ s:String) -> String {
    var midCount = s.count / 2
    return s.count % 2 == 0 ? String(Array(s)[midCount - 1...midCount]): String(Array(s)[midCount])
}

// 모범 답안
// Index(encodedOffset:)을 사용해서, UTF-8 encoded Offset으로 인덱스를 생성하는 코드
func goodSolution(_ s:String) -> String {

    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}



