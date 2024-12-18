import SwiftUI

struct DogView: View {
    var body: some View {
        List {
            Text("🐶 Golden Retriever")
            Text("🐶 German Shepherd")
            Text("🐶 Labrador Retriever")
            Text("🐶 Bulldog")
            Text("🐶 Poodle")
        }
        .navigationTitle("Best Dog Breeds")
    }
}
