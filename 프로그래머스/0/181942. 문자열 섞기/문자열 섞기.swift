import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let str1Array: Array = Array(str1)
    let str2Array: Array = Array(str2)
    
    var result = ""

    for i in 0..<str1.count {
        result += String(str1Array[i])
        result += String(str2Array[i])
    }
    
    return result
}