import SwiftUI

struct ContentView: View {
    @State private var viewModel = ItemsViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach($viewModel.items) { $item in
                    NavigationLink(destination: DetailView(item: $item)) {
                        HStack {
                            Text(item.title)
                        }
                    }
                }
            }
            .navigationTitle("Items")
        }
    }
}


#Preview {
    ContentView()
}
