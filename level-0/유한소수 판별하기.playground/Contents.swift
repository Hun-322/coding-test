import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var value = b / gcd(a,b)
    
    while value != 1 {
        if value % 2 == 0 {
            value /= 2
        } else if value % 5 == 0 {
            value /= 5
        } else {
            return 2
        }
    }
    return 1
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}
