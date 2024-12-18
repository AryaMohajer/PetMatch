import SwiftUI

struct SurveyPage5: View {
    @ObservedObject var viewModel = SurveyViewModel()
    
    // Ensure the number of questions doesn't exceed the array length
    var body: some View {
        VStack {
            Text("Page 5: Answer the following questions:")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView {
                // Dynamically calculate the range to ensure it doesn't go out of bounds
                ForEach(20..<min(25, viewModel.questions.count), id: \.self) { index in
                    VStack(alignment: .leading) {
                        Text(viewModel.questions[index].question)
                            .font(.body)
                            .padding(.bottom, 5)
                        
                        Picker(selection: $viewModel.answers[index], label: Text("Answer")) {
                            ForEach(viewModel.questions[index].options, id: \.self) { option in
                                Text(option)
                                    .font(.system(size: 14))
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.bottom, 10)
                    }
                    .padding(.horizontal)
                }
            }
            
            Button(action: {
                viewModel.saveAnswers()
            }) {
                Text("Submit Answers")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(12)
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 40)
        }
        .background(Color.black) // Set background color to black for final page
        .edgesIgnoringSafeArea(.all) // Ensure the background fills the screen
    }
}
