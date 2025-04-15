import Foundation

func solution(_ myStr:String) -> [String] {
    var result: [String]
    result = myStr.split { $0 == "a" || $0 == "b" || $0 == "c" }
                .map { String($0) }
    
    return result.isEmpty ? ["EMPTY"] : result
}