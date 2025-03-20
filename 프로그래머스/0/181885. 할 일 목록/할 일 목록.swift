import Foundation

func solution(_ todoList:[String], _ finished:[Bool]) -> [String] {
    return todoList.enumerated().filter { !finished[$0.offset] }.map { $0.element }
}