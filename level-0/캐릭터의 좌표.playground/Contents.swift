import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var dic:Dictionary =
    ["left": [-1,0], "right": [1,0], "up": [0,1], "down":[0,-1] ]
    var arr: [[Int]] = []
    var x = 0
    var y = 0
    // arr에 움직임들 담기
    for i in keyinput {
        arr.append(dic[i]!)
    }
    // 움직이는 과정
    for j in arr.indices {
        x += arr[j][0]
        y += arr[j][1]
        // 절대 값 좌표(x,y)가 절대 값 board범위를 벗어났을때,
        // 좌표가 양수면 +1, 음수면 -1 더해주는 연산
        if abs(x) > abs(board[0]/2) {
            x > 0 ? (x -= 1) : (x += 1)
        }
        if abs(y) > abs(board[1]/2) {
            y > 0 ? (y -= 1) : (y += 1)
        }
    }
    return [x,y]
}
