import SwiftUI

struct PetOptionsView: View {
    var body: some View {
        VStack {
            Text("Choose Your Pet")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Spacer()
            
            HStack(spacing: 20) {
                NavigationLink(destination: CatView()) {
                    VStack {
                        Image(systemName: "cat") // System image or custom image
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.orange)
                        Text("Cat Card")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    .frame(width: 150, height: 200)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                }
                
                NavigationLink(destination: DogView()) {
                    VStack {
                        Image(systemName: "dog") // System image or custom image
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                        Text("Dog Card")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    .frame(width: 150, height: 200)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                }
            }
            Spacer()
        }
        .navigationTitle("Pet Options")
    }
}
