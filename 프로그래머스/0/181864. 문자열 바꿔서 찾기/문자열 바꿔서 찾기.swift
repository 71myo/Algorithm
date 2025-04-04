import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let flipped = myString.map { $0 == "A" ? "B" : "A" }.joined()
    return  flipped.contains(pat) ? 1 : 0
}