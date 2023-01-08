import Foundation

func solution(_ s:String) -> Bool{
    var n = 0
    
    for i in s {
        i == "(" ? (n += 1) : (n -= 1)
        if n == -1 { return false }
    }
    return n == 0
}
