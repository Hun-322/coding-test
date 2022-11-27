// 첫 통과 답안
// 유클리드 호제법 적용
func firstSolution(_ n:Int, _ m:Int) -> [Int] {
    
    func gcd(_ n:Int, _ m:Int) -> Int{
        var r = 0
        var n = n
        var m = m
        
        while (m != 0) {
            r = n % m
            n = m
            m = r
        }
        return n
    }
    
    func lcd(_ n:Int, _ m:Int) -> Int {
        (n * m) / gcd(n, m)
    }
    return [gcd(n, m),lcd(n, m)]
}

// code refactoring
func gcd2(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd2(b, mod)
}

func lcm2(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd2(a, b)
}

func solution(_ n:Int, _ m:Int) -> [adsInt] {
    return [gcd2(n, m), lcm2(n, m)]
}

