import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result: [String] = []

    for row in picture {
        // 가로 추가
        let stretchedRow = row.map { String(repeating: $0, count: k) }.joined()

        // 세로 추가
        for _ in 0..<k {
            result.append(stretchedRow)
        }
    }

    return result
}