import SwiftUI

struct DetailView: View {
    @Binding var item: Item
    
    var body: some View {
        VStack(spacing: 10) {
            Text(item.title)
                .font(.largeTitle)
            FavoriteButton(isFavorite: $item.isFavorite)
                .font(.system(size: 40))
            Spacer()
            
        }
        .padding()
        .navigationTitle("Detail")
    }
}
