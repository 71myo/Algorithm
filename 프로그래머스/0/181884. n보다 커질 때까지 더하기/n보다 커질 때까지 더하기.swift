import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var sum = 0
    for num in numbers {
        sum += num
        if sum > n {
            return sum
        }
    }
    
    return sum
}