import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    numlist.sorted{
        if abs($0-n) == abs($1-n) {
            return $0 > $1
        }
        return abs(n - $0) < abs(n - $1)
    }
}
