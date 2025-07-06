import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool

    var body: some View {
        Button {
            isFavorite.toggle()
        } label: {
            Image(systemName: isFavorite ? "star.fill" : "star")
                .foregroundColor(isFavorite ? .yellow : .gray)
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}
