import SwiftUI

struct SurveyPage1: View {
    @ObservedObject var viewModel = SurveyViewModel()
    var body: some View {
            VStack(alignment: .leading) {
                ZStack {
                               Rectangle()
                                   .frame(maxWidth: .infinity, maxHeight: 300)
                                   .foregroundColor(.white)
                                   .edgesIgnoringSafeArea(.top) // Ensures white background extends fully
                               Text("Answer the following questions about your interest:")
                                   .font(.title3)
                                   .fontWeight(.semibold)
                                   .padding(.horizontal)
                           }

               
                
                
                
                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(0..<5, id: \.self) { index in
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
                NavigationLink(destination: SurveyPage2()) {
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
