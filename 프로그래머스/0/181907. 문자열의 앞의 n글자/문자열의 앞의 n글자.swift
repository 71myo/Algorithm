import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var result = ""

    result = String(my_string.prefix(n))

    return result
}