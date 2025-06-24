import SwiftTUI

struct MainView: View {
    @State var todoList: [Todo] = [
        Todo(id: 1, title: "Buy groceries"),
        Todo(id: 2, title: "Walk the dog"),
        Todo(id: 3, title: "Read a book")
    ]
    @State var nextId = 4

    var body: some View {
        ContentView(todoList: $todoList, nextId: $nextId)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .border(.rounded)
    }
}

Application(rootView: MainView()).start()
