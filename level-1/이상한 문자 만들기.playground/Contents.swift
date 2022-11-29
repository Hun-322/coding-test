func solution(_ s:String) -> String {
    var arr:[String] = []
    // 홀짝 기준이 되는 변수
    var blank = 0
    
    for i in s {
        blank % 2 == 0 ? arr.append(String(i.uppercased())) : arr.append(String(i.lowercased()))
        blank += 1
        // 반복문이 실행될때 공백을 만나면, 홀짝(대문자, 소문자)조건 초기화
        if i == " " {
            blank = 0
        }
    }
    return ""
}
