import SwiftUI

@Observable
class ItemsViewModel {
    var items: [Item] = [
        Item(title: "Cell number 1", isFavorite: false),
        Item(title: "Cell number 2", isFavorite: false),
        Item(title: "Cell number 3", isFavorite: false),
        Item(title: "Cell number 4", isFavorite: false),
        Item(title: "Cell number 5", isFavorite: false),
        Item(title: "Cell number 6", isFavorite: false),
        Item(title: "Cell number 7", isFavorite: false),
        Item(title: "Cell number 8", isFavorite: false),
        Item(title: "Cell number 9", isFavorite: false),
        Item(title: "Cell number 10", isFavorite: false)
    ]

    func toggleFavorite(for item: Item) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isFavorite.toggle()
        }
    }
}
