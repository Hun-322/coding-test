func solution(_ a:Int, _ b:Int) -> String {
    var arr = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    var sum = b
    
    for i in 1..<a {
        switch i {
            case 4, 6, 9, 11:
            sum += 30
            case 2:
            sum += 29
            default:
            sum += 31
        }
    }
    return arr[sum%7]
}

// reduce를 이용한 풀이
func shortSolution(_ a:Int, _ b:Int) -> String {

    let w = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let monthDay = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let totalDay = monthDay[0..<a-1].reduce(0, +) + b

    return w[totalDay % 7]
}

