import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    let arrayOne = Array(arr[intervals[0][0]...intervals[0][1]])
    let arrayTwo = Array(arr[intervals[1][0]...intervals[1][1]])

    return arrayOne + arrayTwo
}