import SwiftUI

struct SurveyPage2: View {
    @ObservedObject var viewModel = SurveyViewModel()
    var body: some View {
            VStack(alignment: .leading) {
                Text("Answer the following questions about your intretment:")
                    .font(.title3)
            
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .padding(.bottom, 3)
                    .padding(.horizontal)
                 
                    Text("___________")
                        .font(.title2)
                
                        .fontWeight(.semibold)
            
                        .padding(.bottom, 10)
                        .padding(.horizontal)
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(5..<10, id: \.self) { index in
                            VStack(alignment: .leading, spacing: 10) {
                                // Question Title
                                Text(viewModel.questions[index].question)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 5)
                                
                                // Options displayed as buttons
                                ForEach(viewModel.questions[index].options, id: \.self) { option in
                                    Button(action: {
                                        viewModel.answers[index] = option
                                    }) {
                                        HStack {
                                            Image(systemName: viewModel.answers[index] == option ? "largecircle.fill.circle" : "circle")
                                                .foregroundColor(viewModel.answers[index] == option ? .green : .gray)
                                            Text(option)
                                                .font(.system(size: 16))
                                                .foregroundColor(.primary)
                                            Spacer()
                                        }
                                        .padding()
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .shadow(color: Color.gray.opacity(0.3), radius: 3, x: 0, y: 2)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                
                // Navigation to the next page
                NavigationLink(destination: SurveyPage3()) {
                    Text("Next Page")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            }
            .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
        }
    }

    //
