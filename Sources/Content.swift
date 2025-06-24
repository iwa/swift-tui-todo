import SwiftTUI

struct ContentView: View {
    @Binding var todoList: [Todo]
    @Binding var nextId: Int

    var body: some View {
        VStack {
            Text("   To-Do")
            .bold()
            .foregroundColor(Color.blue)

            Divider().foregroundColor(Color.gray)

            ForEach(todoList, id: \.id) { todo in
                HStack {
                    Button(" [\(todo.completed ? "x" : " ")] ") {
                        if let index = todoList.firstIndex(where: { $0.id == todo.id }) {
                            todoList[index].toggle()
                        }
                    }

                    if todo.completed {
                        Text("\(todo.id) - \(todo.title)").strikethrough().italic().foregroundColor(.gray)
                    } else {
                        Text("\(todo.id) - \(todo.title)")
                    }

                    Spacer()
                    Button("Remove") {
                        if let index = todoList.firstIndex(where: { $0.id == todo.id }) {
                            todoList.remove(at: index)
                        }
                    }
                }
            }

            Spacer()

            Divider().foregroundColor(Color.gray)

            TextField(placeholder: "To do...") {
                todoList.append(Todo(id: nextId, title: $0))
                nextId += 1
            }
        }
    }
}