import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result: [[Int]] = []

    for i in 0..<n {
        var row: [Int] = []
        for j in 0..<n {
            row.append(i == j ? 1 : 0)
        }
        result.append(row)
    }
    
    return result
}