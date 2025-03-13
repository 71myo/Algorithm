import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var arr = arr
    for (i, q) in query.enumerated() {
        if i % 2 == 0 {
            arr = Array(arr[0...q]) // 짝수 인덱스 -> 뒷부분 없앰
        } else {
            arr = Array(arr[q...]) // 홀수 인덱스 -> 앞부분 없앰
        }
    }   
    return arr
}