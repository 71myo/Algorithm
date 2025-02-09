import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    
    let dice = [a, b, c, d].sorted()
    
    // 모든 숫자가 같을 때
    if dice[0] == dice[3] { 
        return 1111 * dice[0]
    } else if dice[0] == dice[2] || dice[1] == dice[3] { // 세 개가 같을 때
        let p = dice[1]
        let q = dice[0] == dice[2] ? dice[3] : dice[0]
        return (10 * p + q) * (10 * p + q)
    } else if dice[0] == dice[1] && dice[2] == dice[3] { // 두 쌍이 같을 때
        let p = dice[0]
        let q = dice[2]
        return (p + q) * abs(p - q)
    } else if dice[0] == dice[1] || dice[1] == dice[2] || dice[2] == dice[3] { // 두 개만 같을 때
        let q = dice[0] == dice[1] ? dice[2] : dice[0]
        let r = dice[2] == dice[3] ? dice[1] : dice[3]
        return q * r
    } else {
        return dice.min()!
    }
}