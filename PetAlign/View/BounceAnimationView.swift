import SwiftUI

struct BounceAnimationView: View {
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    @State private var showCatPicture: Bool = false
    @State private var counter: Int = 3

    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                if showCatPicture {
                    VStack(spacing: 20) {
                        Text("Your Best Match is :")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Image("cat_picture") // Replace "cat_picture" with your asset name
                            .resizable()
                            .foregroundColor(.gray)
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(
                                        LinearGradient(
                                            gradient: Gradient(colors: [.green, .yellow]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        ), lineWidth: 5)
                            )
                            .shadow(radius: 10)
                        
                        Text("Ragdoll is perfect for you!")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    .transition(.scale)
                } else {
                    VStack(spacing: 10) {
                        ZStack {
                            Circle()
                                .fill(LinearGradient(
                                    gradient: Gradient(colors: [Color.green.opacity(0.7), Color.yellow.opacity(0.7)]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                .frame(width: 150, height: 150)
                                .scaleEffect(scale)
                                .opacity(opacity)
                                .animation(.easeOut(duration: 0.6).repeatForever(autoreverses: true), value: scale)
                            
                            Text("\(counter)")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .onAppear {
                            startCountdown()
                            bounceAnimation()
                        }
                        
                        Text("Finding your perfect match...")
                            .font(.title3)
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.top, 10)
                        
                      
                        
                        
                        
                        
                    }
                }
            }
            .padding()
        }
        .animation(.easeInOut, value: showCatPicture) // Smooth transition when showing the picture
    }

    private func bounceAnimation() {
        scale = 1.2
        opacity = 0.8
    }

    private func startCountdown() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if counter > 0 {
                counter -= 1
            } else {
                timer.invalidate()
                withAnimation {
                    showCatPicture = true
                }
            }
        }
    }
}

struct BounceAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        BounceAnimationView()
    }
}
