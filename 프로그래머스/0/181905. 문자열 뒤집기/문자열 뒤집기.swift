import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    let startIndex = my_string.index(my_string.startIndex, offsetBy: s)
    let endIndex = my_string.index(my_string.startIndex, offsetBy: e)

    let first = my_string[..<startIndex]
    let middle = my_string[startIndex...endIndex].reversed()
    let end = my_string[endIndex...].dropFirst()
    
    return String(first + middle + end)
}