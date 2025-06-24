import SwiftTUI

struct ContentView: View {
    @Binding var todoList: [Todo]

    var body: some View {
        VStack {
            Text("   To-Do")
            .bold()
            .foregroundColor(Color.blue)

            Divider().foregroundColor(Color.gray)

            ForEach(todoList, id: \.id) { todo in
                HStack {
                    Text(" [\(todo.completed ? "x" : " ")] \(todo.id) - \(todo.title)")
                    Spacer()
                    Button("Complete") {
                        if let index = todoList.firstIndex(where: { $0.id == todo.id }) {
                            todoList[index].toggle()
                        }
                    }
                    Button("Remove") {
                        if let index = todoList.firstIndex(where: { $0.id == todo.id }) {
                            todoList.remove(at: index)
                        }
                    }
                }
            }
        }
    }
}