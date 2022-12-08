// 첫 통과 풀이
func solution(_ strings:[String], _ n:Int) -> [String] {
    var str2D = strings.map{$0.map{String($0)}}
    var sortArr = str2D.sorted(by:{
      $0[n] == $1[n] ? ($0.joined() < $1.joined()) : $0[n]<$1[n]
    })
    var answer:[String] = []
    
    for i in sortArr.indices {
        answer.append(sortArr[i].joined())
    }
    return answer
}

// 접근은 같지만 깔끔한 코드
func goodSolution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{ Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}

goodSolution(["abce", "abcd", "cdx"] , 2)
// $0 -> Array("abce"), $1 -> Array("abcd") ->  "abce" < "abcd" -> false [abcd, abce]
// $0 -> ? $1 -> ?
// swift에서 제공하는 sort()는 timsort를 제공한다. timsort = InsertionSort + MergeSort
