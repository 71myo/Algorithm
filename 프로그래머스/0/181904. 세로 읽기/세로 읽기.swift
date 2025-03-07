import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var result = ""

    let array = Array(my_string)

    for i in stride(from: c-1, to: array.count, by: m) {
        result.append(array[i])
    }
    return result
}