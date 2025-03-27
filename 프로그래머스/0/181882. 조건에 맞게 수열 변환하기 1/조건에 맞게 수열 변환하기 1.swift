import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    
    for num in arr {
        if num >= 50 && num % 2 == 0 {
            result.append(num / 2)
        } else if num < 50 && num % 2 == 1 {
            result.append(num * 2)
        } else {
            result.append(num)
        }
    }
    
    return result
}