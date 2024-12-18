import SwiftUI

struct SurveyView: View {
    @ObservedObject var viewModel = SurveyViewModel()
    @State private var navigateToOptions = false

    var body: some View {
        VStack {
            Text("Answer the following questions:")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()

            ScrollView {
                VStack(spacing: 20) {
                    // Survey Questions
                    ForEach(viewModel.questions.indices, id: \.self) { index in
                        VStack(alignment: .leading) {
                            // Question text
                            Text(viewModel.questions[index].question)
                                .font(.body)
                                .padding(.bottom, 5)
                            
                            // Picker for options with smaller font size
                            Picker(selection: $viewModel.answers[index], label: Text("Answer")) {
                                ForEach(viewModel.questions[index].options, id: \.self) { option in
                                    Text(option) // Display the option text
                                        .font(.system(size: 14)) // Adjusted font size for the options
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle()) // Optional: to use segmented picker style
                            .padding(.bottom, 10)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            
            // Button for saving data
            Button(action: {
                viewModel.saveAnswers()
                navigateToOptions = true
            }) {
                Text("I don't have any problem to save my data")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .padding()
            .navigationDestination(isPresented: $navigateToOptions) {
                PetOptionsView() // Navigate to next view after saving data
            }
        }
        .onAppear {
            // Trigger animations or actions if needed (optional)
        }
    }
}
