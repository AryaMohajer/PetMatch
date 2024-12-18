import SwiftUI

struct CatView: View {
    var body: some View {
        List {
            Text("🐱 Persian Cat")
            Text("🐱 Maine Coon")
            Text("🐱 Siamese Cat")
            Text("🐱 British Shorthair")
            Text("🐱 Bengal Cat")
        }
        .navigationTitle("Best Cat Breeds")
    }
}
