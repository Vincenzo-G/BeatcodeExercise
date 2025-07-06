import SwiftUI

struct Item: Identifiable {
    var id: UUID = UUID()
    var title: String
    var isFavorite: Bool
}

