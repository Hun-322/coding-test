// 첫번째 해답
func firstSolution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return arr.filter{$0 % divisor == 0}.sorted().count > 0 ? arr.filter{$0 % divisor == 0}.sorted() : [-1]
}

// 가독성 높인 답
func goodSolution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer = arr.filter{$0 % divisor == 0}.sorted()
    return answer.count > 0 ? answer : [-1]
}

