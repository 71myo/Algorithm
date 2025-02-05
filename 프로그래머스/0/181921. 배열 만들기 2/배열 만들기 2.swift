import Foundation

func isValid(_ number: Int) -> Bool {
    let digits = String(number) // 숫자를 문자열로 변환
        
    for digit in digits {
           if digit != "0" && digit != "5" {
            return false // 0 or 5가 아니면 false
        }
    }
    return true // 모든 자릿수가 0, 5면 true
}

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    
    for num in l...r {
        if isValid(num) {
            result.append(num)
        }
    }

    return result.isEmpty ? [-1] : result
}