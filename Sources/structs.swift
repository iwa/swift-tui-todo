struct Todo {
    var id: Int
    var title: String
    var completed: Bool

    init(id: Int, title: String, completed: Bool = false) {
        self.id = id
        self.title = title
        self.completed = completed
    }

    mutating func toggle() {
        self.completed.toggle()
    }
}