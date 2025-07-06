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
                                .accessibilityLabel("Item title: \(item.title)")
                            Spacer()
                            FavoriteButton(isFavorite: $item.isFavorite)
                                .accessibilityLabel(item.isFavorite ? "Remove from favorites" : "Mark as favorite")
                        }
                        .accessibilityElement(children: .combine)
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
