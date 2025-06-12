import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let combined = rank.enumerated().map { (index, rank) in
        (rank, index, attendance[index]) // (등수, 학생 번호, 참석 가능 여부)
    }
    
    // 참석 가능한 학생만 필터
    let filtered = combined.filter { $0.2 == true }
    
    // 등수 기준 오름차순 정렬
    let sortedTop3 = filtered.sorted { $0.0 < $1.0 }.prefix(3)
    
    // 학생 번호 추출
    let studentNumber = sortedTop3.map { $0.1 }
    
    return 10000 * studentNumber[0] + 100 * studentNumber[1] + studentNumber[2]
}