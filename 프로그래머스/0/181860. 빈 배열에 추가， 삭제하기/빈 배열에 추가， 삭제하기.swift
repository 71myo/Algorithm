import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var X: [Int] = []
    
    for i in 0..<arr.count {
        if flag[i] {
            // X에 arr[i]를 arr[i]*2번 추가
            X += Array(repeating: arr[i], count: arr[i] * 2)
        } else {
            // X에서 마지막 arr[i]개의 원소를 제거
            X.removeLast(arr[i])
        }
    }
    
    return X
}
