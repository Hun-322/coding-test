import Foundation

func solution(_ nums:[Int]) -> Int {
    var sumNum:[Int] = []
    
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            for k in j+1..<nums.count{
                sumNum.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    var n = sumNum.max()!
    var arr = Array(repeating: false, count: n+1)
    var primes:[Int] = []
    
    for i in 2...n {
        if arr[i] == false {
            for j in stride(from: i, through: n, by: i) {
                arr[j] = true
            }
            primes.append(i)
        }
    }
    return sumNum.filter{primes.contains($0)}.count
}

// 더 깔끔한 풀이
func goodSolution(_ nums:[Int]) -> Int {
    
    func isPrime(_ num: Int) -> Bool {
        var n = 2
        while n < num {
            if num % n == 0 { return false }
            n += 1
        }
        return true
    }
    
    var answer = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                if isPrime(nums[i] + nums[j] + nums[k]) { answer += 1 }
            }
        }
    }
    return answer
}
