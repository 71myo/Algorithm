import Foundation

func solution(_ strList:[String]) -> [String] {
    if let index = strList.firstIndex(where: { $0 == "l" || $0 == "r" }) {
        return strList[index] == "l" ? Array(strList[..<index]) : Array(strList[(index+1)...])
    }
    return [] // "l" or "r" 없을 때
}