import Foundation

func solution(_ my_string:String) -> [String] {
    var result: [String] = []
    
    for i in 0..<my_string.count {
        let startIndex = my_string.index(my_string.startIndex, offsetBy: i)
        result.append(String(my_string[startIndex...]))
    }
        
    return result.sorted()
}