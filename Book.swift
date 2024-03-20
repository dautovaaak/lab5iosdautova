import Foundation
struct Book: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var author: String
}
