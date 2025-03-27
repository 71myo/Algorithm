import Foundation

func transform(_ arr: [Int]) -> [Int] {
    return arr.map {
        if $0 > 50 && $0 % 2 == 0 {
            return $0 / 2
        } else if $0 < 50 && $0 % 2 == 1 {
            return $0 * 2 + 1
        } else {
            return $0
        }
    }
}

func solution(_ arr:[Int]) -> Int {
    var before = arr
    var count = 0
    
    while true {
        let after = transform(before)
        if before == after {
            return count
        }
        before = after
        count += 1
    }
}