import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var result = arr
    let row = arr.count // 행
    let column = arr[0].count // 열

    if row > column {
        // 행 끝에 0 추가
        for i in 0..<row {
            result[i] += Array(repeating: 0, count: row - column)
        }
    } else if row < column {
        // 열 끝에 0 추가
        for _ in 0..<(column - row) {
            result.append(Array(repeating: 0, count: column))
        }
    }
    
    return result
}