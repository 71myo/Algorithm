import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    var answer: Int = 0
    
    switch "\(ineq)\(eq)" {
    case ">=" :
        answer = (n >= m) ? 1 : 0
        
    case "<=" :
        answer = (n <= m) ? 1 : 0
        
    case ">!" :
        answer = (n > m) ? 1 : 0
        
    case "<!" :
        answer = (n < m) ? 1 : 0
    
    default:
        answer = 0
    }
    
    return answer
}