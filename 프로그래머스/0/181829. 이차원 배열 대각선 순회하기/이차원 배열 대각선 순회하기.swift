import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    let n = board.count
    var result = 0

    for i in 0..<n {
        for j in 0..<board[i].count {
            if i + j <= k {
                result += board[i][j]
            }
        }
    }
    
    return result
}