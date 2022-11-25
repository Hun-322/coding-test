import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var sortArr = array.sorted()
    var compare = 200
    var answer = 0
    for i in sortArr {
        if abs(i - n) < compare {
            compare = abs(i - n )
            answer = i
        }
    }
    return answer
}
