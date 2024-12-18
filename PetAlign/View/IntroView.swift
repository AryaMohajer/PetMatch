import SwiftUI

struct IntroView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) { // Reduced spacing between elements
                // Title Text
                Text("Find Your Perfect Pet Match")
                    .font(.system(size: 28, weight: .bold, design: .rounded)) // Adjusted to fit iPhone 16 Pro
                    .foregroundColor(.black)
                    .padding(.top, 200) // Top padding for spacing

                // Feature 1: "Find your best cat or pet match"
                VStack(spacing: 12) {
                    Image(systemName: "pawprint.fill") // Icon for pet-related feature
                        .foregroundColor(.green)
                        .font(.system(size: 40)) // Adjusted icon size for iPhone 16 Pro
                    Text("Find your best cat or pet match")
                        .font(.system(size: 18, weight: .semibold, design: .rounded)) // Reduced title size
                        .foregroundColor(.black)
                    Text("Answer simple questions about your lifestyle to find the perfect pet.")
                        .font(.system(size: 14, design: .rounded)) // Reduced description text size
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30) // Adjusted horizontal padding for text
                }
                .padding(.top, 20) // Top padding for spacing

                // Feature 2: "Let us save your data"
                VStack(spacing: 12) {
                    Image(systemName: "checkmark.circle.fill") // Icon for saving data
                        .foregroundColor(.green)
                        .font(.system(size: 40)) // Adjusted icon size
                    Text("Let us save your data")
                        .font(.system(size: 18, weight: .semibold, design: .rounded)) // Adjusted title size
                        .foregroundColor(.black)
                    Text("You can choose to let us store your preferences for a better experience.")
                        .font(.system(size: 14, design: .rounded)) // Adjusted description text size
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30) // Adjusted horizontal padding for text
                }
                
                .padding(.top, 10) // Padding for spacing between sections

                Spacer()

                // Continue Button
                NavigationLink(destination: SurveyPage1()) {
                    Text("Continue")
                        .font(.system(size: 16, weight: .semibold)) // Adjusted button text size
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.horizontal, 40)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                }
                .padding(.bottom, 30) // Bottom padding for button placement
            }
            .background(Color.white) // Set background color to black
            .edgesIgnoringSafeArea(.all) // Make background fill the screen
        }
    }
}
