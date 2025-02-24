import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var result: [Int] = []
    
    for str in intStrs {
        let startIndex = str.index(str.startIndex, offsetBy: s) // s번째 인덱스
        let endIndex = str.index(startIndex, offsetBy: l) // s + l번째 인덱스
        let substring = String(str[startIndex..<endIndex]) // 부분 문자열
        if let num = Int(substring), num > k {
            result.append(num)
        }
    }

    return result
}