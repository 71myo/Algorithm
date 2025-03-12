import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    return my_string.enumerated()
        .filter { !indices.contains($0.offset) } // 삭제할 인덱스 제외
        .map { String($0.element) } // 문자 리스트 변환
        .joined()
}