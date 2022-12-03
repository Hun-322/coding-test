import Foundation

func gcd(_ num1:Int, _ num2:Int) -> Int {
    if num2 == 0 {
        return num1
    } else {
        return gcd(num2, num1%num2)
    }
}

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var denum = (denum1 * num2) + (denum2 * num1)
    var num = num1 * num2
    var gcd = gcd(denum, num)
    
    return [denum/gcd, num/gcd]
}

