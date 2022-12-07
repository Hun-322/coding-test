import Foundation
// 첫 통과 풀이
func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    for i in 0..<db.count {
        if id_pw[0] == db[i][0] && id_pw[1] == db[i][1]{
            return "login"
        } else if id_pw[0] == db[i][0] {
            return "wrong pw"
        }
    }
    return "fail"
}
// filter 사용
func filterSolution(_ id_pw:[String], _ db:[[String]]) -> String {
    let id = id_pw[0]
    let pw = id_pw[1]

    let filter1 = db.filter{$0[0] == id}
    let filter2 = filter1.filter{$0[1] == pw}

    return filter2.isEmpty ? filter1.isEmpty ? "fail" : "wrong pw" : "login"
}
