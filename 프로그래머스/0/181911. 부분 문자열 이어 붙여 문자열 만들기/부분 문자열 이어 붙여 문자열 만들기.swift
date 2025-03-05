import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var result = ""
    
    for (index, str) in my_strings.enumerated() {
        let s = parts[index][0] // 시작 인덱스
        let e = parts[index][1] // 끝 인덱스

        let startIndex = str.index(str.startIndex, offsetBy: s)
        let endIndex = str.index(str.startIndex, offsetBy: e)
        
        result += String(str[startIndex...endIndex])
    }
    
    return result
}