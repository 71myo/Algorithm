import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var count = 0
    var length = pat.count
    
    for i in 0...myString.count - length {
        let start = myString.index(myString.startIndex, offsetBy: i)
        let end = myString.index(start, offsetBy: length)
        let sub = myString[start..<end]
        
        if sub == pat {
            count += 1
        }
    }
    return count
}