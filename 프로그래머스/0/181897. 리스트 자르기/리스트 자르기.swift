import Foundation

func solution(_ n:Int, _ slicer:[Int], _ numList:[Int]) -> [Int] {
    let a = slicer[0]
    let b = slicer[1]
    let c = slicer[2]

    let result: [Int]

    switch n {
    case 1:
        result = Array(numList[0...b])
    case 2:
        result = Array(numList[a...])
    case 3:
        result = Array(numList[a...b])
    case 4:
        result = Array(stride(from: a, through: b, by: c).map { numList[$0] })
    default:
        result = []
    }
    
    return result
}