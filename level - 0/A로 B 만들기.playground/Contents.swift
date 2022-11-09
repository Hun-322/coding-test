import UIKit

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}
