import Foundation

func solution(_ myString:String) -> [Int] {
    let x = myString.components(separatedBy: "x")

    return x.map { $0.count }
}