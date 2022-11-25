import Foundation

//처음 통과한 방식
func fisrtSolution(_ s:String) -> Bool {
    var s = s.lowercased()
    return s.filter{String($0) == "p"}.count == s.filter{String($0) == "y"}.count ? true : false
}

// 비교해서 값이 같으면 당연히 true가 나오고 아니면 false이 나오기때문에
// 굳이 처음에 삼항연사자를 넣어줄 필요가 없었다.
func secondSolution(_ s:String) -> Bool {
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}

// 다른 사람 풀이
// components를 이용해서 p와 y를 잘라서 배열의 갯수로 비교하는 방법도 있다.
func differentSolution(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}
