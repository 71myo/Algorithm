import Foundation

func solution(_ nStr:String) -> String {
    let index = nStr.firstIndex { $0 != "0" }!
    return String(nStr[index...])
}