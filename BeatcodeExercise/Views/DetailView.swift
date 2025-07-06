import SwiftUI

struct DetailView: View {
    @Binding var item: Item
    
    var body: some View {
        VStack(spacing: 10) {
            Text(item.title)
                .font(.largeTitle)
            FavoriteButton(isFavorite: $item.isFavorite)
                .font(.largeTitle)
                .accessibilityLabel(item.isFavorite ? "Remove from favorites" : "Mark as favorite")
            Spacer()
            
        }
        .padding()
        .navigationTitle("Detail")
    }
}
