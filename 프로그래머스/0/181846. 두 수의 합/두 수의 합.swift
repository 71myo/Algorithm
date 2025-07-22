import Foundation

func solution(_ a:String, _ b:String) -> String {
    let aDigits = Array(a.reversed())
    let bDigits = Array(b.reversed())

    let maxLength = max(aDigits.count, bDigits.count)

    var result: [String] = []
    var carry = 0 // 새로운 자리수

    for i in 0..<maxLength {
        let digitA: Int = i < aDigits.count ? Int(String(aDigits[i]))! : 0
        let digitB: Int = i < bDigits.count ? Int(String(bDigits[i]))! : 0

        let sum = digitA + digitB + carry
        result.append(String(sum % 10))
        carry = sum / 10
    }

    if carry > 0 {
        result.append(String(carry))
    }

    return result.reversed().joined()
}