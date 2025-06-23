import SwiftTUI

let appState = AppState()

@MainActor
struct ContentView: @preconcurrency View {
    var body: some View {
        content
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .border(.rounded)
    }

    private var content: some View {
        VStack {
            Text("   To-Do")
            .bold()
            .foregroundColor(Color.blue)

            Divider().foregroundColor(Color.gray)

            ForEach(0..<10, id: \.self) { i in
                Text("Item \(i)")
            }
        }
    }
}

Application(rootView: ContentView()).start()
