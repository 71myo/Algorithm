import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    
    for num in arr {
        if !result.contains(num) {
            result.append(num)
        }
        
        if result.count == k {
            break
        }
    }
    
    while result.count < k {
        result.append(-1)
    }
    
    return result
}