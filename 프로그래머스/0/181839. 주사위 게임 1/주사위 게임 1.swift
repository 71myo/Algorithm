import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    guard case 1...6 = a, case 1...6 = b else {
        return 0
    }
    
    switch (a % 2, b % 2) {
    case (1, 1): // 둘 다 홀수
        return a * a + b * b 
    case (1, 0), (0, 1): // 하나만 홀수
        return 2 * (a + b)
    case (0, 0): // 둘 다 짝수
        return abs(a - b)
    default:
        return 0
    }
}