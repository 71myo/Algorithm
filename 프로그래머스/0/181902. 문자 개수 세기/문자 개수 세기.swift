import Foundation

func solution(_ my_string:String) -> [Int] {
    var counts = Array(repeating: 0, count: 52) // 알파벳 저장할 배열

    for ch in my_string {
        if ch.isUppercase {
            counts[Int(ch.asciiValue! - 65)] += 1 // A의 SCHII 값 65 ~ Z:90
        } else if ch.isLowercase {
            counts[Int(ch.asciiValue! - 97 + 26)] += 1 // a의 SCHII 값 97
        }
    }
    
    return counts
}