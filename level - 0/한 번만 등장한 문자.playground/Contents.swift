import Foundation

func solution(_ s:String) -> String {
    // NSCountedSet()-> Set + 특정 객체가 존재하는 수를 반환
    var myCountedSet = NSCountedSet()
    for i in s {
        myCountedSet.add(String(i))
    }
    var answer = myCountedSet.filter {myCountedSet.count(for: $0) == 1 }
    return (answer as! Array<String>).sorted().joined()
}

// 숏 코딩
func solutionShort (_ s: String) -> String {
    // grouping -> 배열 그룹화 시켜준다.
    // 각 Character을 그룹화 시킨 후, filter로 Char개수가 1 이상인 값은 거르고, 다시 map으로 키값만 출력
    return Dictionary(grouping: Array(s).map(String.init), by: { $0 }).filter { $0.value.count <= 1 }
        .map { $0.key }
        .sorted(by: <)
        .joined()
}




