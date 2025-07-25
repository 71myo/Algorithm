import Foundation

func solution(_ strList:[String], _ ex:String) -> String {
    var result = ""

    for str in strList {
        if !str.contains(ex) {
            result += str
        }
    }
    
    return result
}