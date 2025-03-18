import Foundation

func solution(_ numList:[Int], _ n:Int) -> [Int] {
    return Array(numList[(n-1)...])
}