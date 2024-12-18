import SwiftUI

struct SurveyPage4: View {
    @ObservedObject var viewModel = SurveyViewModel()
    
    var body: some View {
        VStack {
            Text("Page 4: Answer the following questions:")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView {
                ForEach(15..<20, id: \.self) { index in
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
            
            NavigationLink(destination: SurveyPage5()) {
                Text("Next Page")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(12)
                    .padding(.horizontal, 40)
            }
            .padding()
        }
    }
}
