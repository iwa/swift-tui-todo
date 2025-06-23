class AppState {
    private var todoList: [Todo] = [
        Todo(id: 1, title: "Buy groceries"),
        Todo(id: 2, title: "Walk the dog"),
        Todo(id: 3, title: "Read a book")
    ]
    private var selection = -1

    func addTodo(title: String) {
        todoList.append(Todo(id: todoList.count + 1, title: title))
    }

    func removeTodo(at index: Int) {
        guard index >= 0 && index < todoList.count else { return }
        todoList.remove(at: index)
    }

    func toggleTodoCompletion(at index: Int) {
        guard index >= 0 && index < todoList.count else { return }
        todoList[index].toggle()
    }

    func getTodoList() -> [Todo] {
        return todoList
    }

    func getCount() -> Int {
        return todoList.count
    }
}