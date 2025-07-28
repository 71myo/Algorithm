import Foundation

func solution(_ order:[String]) -> Int {
    var total = 0

    for menu in order {
        if menu == "anything" {
            total += 4500
        } else if menu.contains("latte") {
            total += 5000
        } else {
            total += 4500
        }
    }
    
    return total
}