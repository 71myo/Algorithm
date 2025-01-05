import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    let answer = flag ? a + b : a - b
        
    return answer
}