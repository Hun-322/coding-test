func solution(_ numbers:String) -> Int64 {
    var num:[String:Int] = ["one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9, "zero":0]
    var temp = ""
    var answer = ""
    
    for i in numbers {
        temp += String(i)
        if num[temp] != nil{
            answer += String(num[temp]!)
            temp = ""
        }
    }
    return Int64(answer)!
}
