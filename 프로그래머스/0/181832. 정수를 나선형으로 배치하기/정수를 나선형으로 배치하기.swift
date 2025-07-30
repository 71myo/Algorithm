import Foundation

func solution(_ n:Int) -> [[Int]] {
    // 빈 배열 만들기
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)

    // 시계방향(→ ↓ ← ↑) 배열 만들기
    let dx = [0, 1, 0, -1]
    let dy = [1, 0, -1, 0]

    var x = 0, y = 0 // 좌표
    var dir = 0 // 현재 방향 인덱스 (0: →, 1: ↓, 2: ←, 3: ↑)
    var num = 1 // 배열에 넣을 숫자

    while num <= n * n {
        result[x][y] = num
        num += 1

        let nx = x + dx[dir]
        let ny = y + dy[dir]

        if nx < 0 || ny < 0 || nx >= n || ny >= n || result[nx][ny] != 0 {
            dir = (dir + 1) % 4 // 방향 전환(0 -> 1 -> 2 -> 3 -> 0)
        }

        // 다음 좌표로 이동
        x += dx[dir]
        y += dy[dir]
    }
    
    return result
}