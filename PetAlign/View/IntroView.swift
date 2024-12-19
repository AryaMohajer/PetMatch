import SwiftUI

struct IntroView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                // Title Text
                Text("Getting Started in PetMatch")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                Spacer()

                // Feature 1: "Find your best cat or pet match"
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "pawprint.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 36))
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Find your best cat or pet match")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        Text("Answer simple questions about your lifestyle to find the perfect pet.")
                            .font(.system(size: 14, design: .rounded))
                            .foregroundColor(.gray)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding(.horizontal, 20)

                // Feature 2: "Let us save your data"
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 36))
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Let us save your data")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        Text("You can choose to let us store your preferences for a better experience.")
                            .font(.system(size: 14, design: .rounded))
                            .foregroundColor(.gray)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding(.horizontal, 20)

                // Feature 3: "Stay updated with your perfect cat"
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "pawprint.circle.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 36))
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Stay updated with your perfect cat")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        Text("In next updates, you can confirm your cat adoption, and we'll send you tips and breed-specific care updates.")
                            .font(.system(size: 14, design: .rounded))
                            .foregroundColor(.gray)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding(.horizontal, 20)

                Spacer()

                // Continue Button
                NavigationLink(destination: SurveyPage1()) {
                    Text("Continue")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(12)
                        .padding(.horizontal, 20)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                }
                .padding(.bottom, 40)
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
