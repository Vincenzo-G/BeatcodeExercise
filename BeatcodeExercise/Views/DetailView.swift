import SwiftUI

struct DetailView: View {
    @Binding var item: Item

    var body: some View {
        VStack(spacing: 20) {
            Text(item.title)
                //.font(.largeTitle)
            Spacer()
        }
        .padding()
        .navigationTitle("Detail")
    }
}
