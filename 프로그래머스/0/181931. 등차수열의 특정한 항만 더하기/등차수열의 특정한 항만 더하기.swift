import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var result: Int = 0
    var term = a
    
    for value in included {
        if value {
            result += term
        }
        term += d
    }
    
    return result
}