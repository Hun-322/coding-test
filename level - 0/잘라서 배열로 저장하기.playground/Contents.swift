import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var my_str = my_str
    for i in stride(from:n, to:my_str.count+(my_str.count / n)-1, by:n+1){
        my_str.insert("-", at: my_str.index(my_str.startIndex, offsetBy: i))
    }
    return my_str.components(separatedBy:"-")
}
