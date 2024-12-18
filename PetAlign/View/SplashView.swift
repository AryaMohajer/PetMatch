import SwiftUI

struct SplashView: View {
    @State private var navigateToIntro = false
    @State private var logoScale: CGFloat = 0.5 // Start small for scaling animation
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // Logo Image with animation
                Image("Splash_cat") // Add your image to Assets.xcassets
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .scaleEffect(logoScale)
                    .opacity(logoScale == 1 ? 1 : 0) // Fade in after scaling
                    .animation(.easeOut(duration: 1.5), value: logoScale)
                    .onAppear {
                        // Start the scaling animation after the view appears
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            logoScale = 1 // Scale up the logo
                        }
                    }
                    .padding(.bottom, 20)
                
                // App Title
                Text("PetMatch")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .padding(.bottom, 8)
                
                // Subtitle Text
                Text("Find your perfect pet match!")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                Spacer()

                // Automatically navigate to the next screen after a few seconds
                NavigationLink(destination: IntroView(), isActive: $navigateToIntro) {
                    EmptyView() // No button to show, we navigate automatically
                }
                
                // "Made by Arya" text at the bottom
                Text("Made by Arya")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
            }
            .onAppear {
                // Automatically navigate after a delay of 2 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    navigateToIntro = true
                }
            }
        }
    }
}
