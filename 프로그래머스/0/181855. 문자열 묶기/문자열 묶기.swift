import Foundation

func solution(_ strArr:[String]) -> Int {
		var lengthCount: [Int: Int] = [:]
		
		for str in strArr {
				let len = str.count
				lengthCount[len, default: 0] += 1
		}
		
    return lengthCount.values.max() ?? 0
}