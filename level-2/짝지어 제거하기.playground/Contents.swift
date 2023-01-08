import Foundation

func solution(_ s:String) -> Int{
    var temp:[Character] = []
    var str = Array(s)
    
    for i in str.indices{
        if temp.count == 0{
            temp.append(str[i])
        }else{
            if temp.last! == str[i]{
                temp.removeLast()
            } else{
                temp.append(str[i])
            }
        }
    }
    return temp.count == 0 ? 1 : 0
}
