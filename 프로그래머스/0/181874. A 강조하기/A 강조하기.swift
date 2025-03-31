import Foundation

func solution(_ myString: String) -> String {
    return String(myString.map {
        if $0 == "a" {
            return "A"
        } else if $0 == "A" {
            return "A"
        } else if $0.isUppercase {
            return Character($0.lowercased())
        } else {
            return $0
        }
    })
}