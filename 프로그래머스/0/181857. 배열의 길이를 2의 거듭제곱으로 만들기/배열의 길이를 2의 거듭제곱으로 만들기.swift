func solution(_ arr: [Int]) -> [Int] {
    var n = 1
    while n < arr.count {
        n *= 2 // 2, 4, 8 ...
    }
    return arr + Array(repeating: 0, count: n - arr.count)
}