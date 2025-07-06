import SwiftUI

@Observable
class ItemsViewModel {
    var items: [Item] = [
        Item(title: "Vincenzo Gerelli", isFavorite: false),
        Item(title: "Emanuele Agosta", isFavorite: false),
        Item(title: "Pasquale Vittoriosi", isFavorite: false),
        Item(title: "Adrian Faz", isFavorite: false),
        Item(title: "Giovanni Lo Monaco", isFavorite: false),
        Item(title: "Flora Amato", isFavorite: false),
        Item(title: "Umberto Ciavattone", isFavorite: false),
        Item(title: "Ester Sgambato", isFavorite: false),
        Item(title: "Giusy Di Paola", isFavorite: false),
        Item(title: "Tiago Pereira", isFavorite: false)
    ]

    func toggleFavorite(for item: Item) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isFavorite.toggle()
        }
    }
}
