func solution(_ seoul:[String]) -> String {
    var num = seoul.firstIndex{ $0 == "Kim"}!
    return "김서방은 \(num)에 있다"
}
