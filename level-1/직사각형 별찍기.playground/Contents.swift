import Foundation

// readLine()이 nil을 반환하기 때문에 코드가 repl 환경에서 실행될 수 있지만 playground에서 코드를 실행할 수 없다.
// 첫 통과 답안
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 0..<b {
    for _ in 0..<a {
        print("*", terminator : "")
    }
    print("")
}

// 배열을 이용한 풀이
for _ in 0..<b {
    print(Array(repeating: "*", count: a).joined())
}
