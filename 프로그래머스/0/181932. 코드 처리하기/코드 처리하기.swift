import Foundation

func solution(_ code:String) -> String {
    var mode = 0
    var ret = ""
    
    for (idx, char) in code.enumerated() {
        if char == "1" {
            mode = 1 - mode // 1 -> 0, 0 -> 1
        } else if (mode == 0 && idx % 2 == 0) || (mode == 1 && idx % 2 != 0) {
            ret.append(char)
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}