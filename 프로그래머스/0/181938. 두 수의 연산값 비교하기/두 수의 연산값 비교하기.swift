import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var result: Int = 0
    
    var array = [String(a), String(b)]
    
    var sol1 = array.joined()
    var sol2 = 2 * a * b
    
    if Int(sol1)! > sol2 {
        result = Int(sol1)!
    } else if Int(sol1)! < sol2 {
        result = sol2
    }
    
    return result
}