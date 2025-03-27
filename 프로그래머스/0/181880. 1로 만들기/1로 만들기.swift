import Foundation

func solution(_ numList: [Int]) -> Int {
    var count = 0
    
    for num in numList {
        var n = num
        while n > 1 {
            n /= 2
            count += 1
        }
    }
    
    return count
}