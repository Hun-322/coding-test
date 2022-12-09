import Foundation

// 첫 통과 풀이
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer:[Int] = []
    
    for i in commands {
        answer.append(array[i[0]-1...i[1]-1].sorted()[i[2]-1])
    }
    return answer
}

// map과 key 사용
func goodSolution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        return commands.map({(key) in
            return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
        })

    }
