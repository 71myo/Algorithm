import Foundation

func solution(_ myString:String) -> [String] {
    return myString.split(separator: " ").map { String($0)}
}