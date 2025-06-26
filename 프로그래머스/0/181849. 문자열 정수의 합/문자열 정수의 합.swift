import Foundation

func solution(_ numStr:String) -> Int {
    return numStr.map { Int(String($0))! }.reduce(0, +)
}