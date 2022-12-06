// 첫 통과 풀이
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var arr2D: [[String]] = Array(repeating: Array(repeating: "0", count:n), count:n)
    var binary1 = arr1.map{String($0, radix:2)}
    var binary2 = arr2.map{String($0, radix:2)}
    var answer: [String] = Array(repeating: "0", count:n)
    
    for i in arr1.indices {
        if binary1[i].count < n {
            binary1[i] = String(repeating: "0", count: n - binary1[i].count) + binary1[i]
        }
        
        if binary2[i].count < n {
            binary2[i] = String(repeating: "0", count: n - binary2[i].count) + binary2[i]
        }
        
        for j in arr1.indices{
            Array(binary1[i])[j] == "1" || Array(binary2[i])[j] == "1" ?  (arr2D[i][j] = "#") : (arr2D[i][j] = " ")
        }
        
        answer[i] = arr2D[i].joined()
    }
    return answer
}
// 모범 답안
func goodSolution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {

    return (0..<n).map {
        let binary = String(arr1[$0] | arr2[$0], radix: 2)
        let padded = String(repeating: "0", count: n - binary.count) + binary
        return padded.reduce("") { $0 + ($1 == "0" ? " " : "#") }
    }
}

