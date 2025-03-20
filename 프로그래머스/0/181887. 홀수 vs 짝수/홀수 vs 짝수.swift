import Foundation

func solution(_ numList:[Int]) -> Int {
    var oddSum = 0
    var evenSum = 0

    for (index, value) in numList.enumerated() {
        if index % 2 == 0 { // 홀수번째 원소
            oddSum += value
        } else { // 짝수번째 원소
            evenSum += value
        }
    }

    return max(oddSum, evenSum)
}