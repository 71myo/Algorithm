import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var result = ""
        
    let startIndex = my_string.index(my_string.startIndex, offsetBy: my_string.count - n)
    
    result = String(my_string[startIndex...])
    
    return result
}