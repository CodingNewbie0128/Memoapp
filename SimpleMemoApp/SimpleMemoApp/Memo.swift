import Foundation

struct Memo {
    let id: UUID
    var content: String
    var date: Date

    init(content: String) {
        self.id = UUID()
        self.content = content
        self.date = Date()
    }
}
