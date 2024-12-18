import Foundation

struct SurveyQuestion {
    let question: String
    let options: [String]
}

class SurveyViewModel: ObservableObject {
    @Published var questions: [SurveyQuestion] = [
        SurveyQuestion(question: "How much time do you spend at home each day?", options: ["Low (Less than 4 hours)", "Normal (4-8 hours)", "Too much (More than 8 hours)"]),
        SurveyQuestion(question: "Do you work from home or outside the house?", options: ["Low (Work outside the house full time)", "Normal (Work from home a few days a week)", "Too much (Work from home full time)"]),
        SurveyQuestion(question: "How many people live with you in your household?", options: ["Low (1 person)", "Normal (2-3 people)", "Too much (4+ people)"]),
        SurveyQuestion(question: "Do you have any children? If so, what are their ages?", options: ["Low (No children)", "Normal (1-2 children, ages 3-10)", "Too much (3+ children, under 5 years old)"]),
        SurveyQuestion(question: "Do you have a lot of visitors or guests over at your place regularly?", options: ["Low (Rarely have guests)", "Normal (Occasional guests, 1-2 times a week)", "Too much (Frequent visitors, 3+ times a week)"]),
        SurveyQuestion(question: "What type of living space do you have (apartment, house, etc.)?", options: ["Low (Small apartment, limited space)", "Normal (Medium-sized apartment or house)", "Too much (Large house or property)"]),
        SurveyQuestion(question: "How much time do you typically spend outside or walking around each day?", options: ["Low (Less than 30 minutes)", "Normal (30 minutes to 1 hour)", "Too much (More than 1 hour)"]),
        SurveyQuestion(question: "How many steps do you usually walk in a day? Do you track it with an app or device?", options: ["Low (Less than 5,000 steps)", "Normal (5,000-10,000 steps)", "Too much (More than 10,000 steps)"]),
        SurveyQuestion(question: "Are there any areas of your home where pets would not be allowed?", options: ["Low (No restrictions, pets can go anywhere)", "Normal (Pets restricted to certain rooms)", "Too much (Pets can’t access most areas of the house)"]),
        SurveyQuestion(question: "Do you have access to outdoor space for a pet (like a backyard or park)?", options: ["Low (No access to outdoor space)", "Normal (Shared outdoor space or nearby park)", "Too much (Private backyard or large outdoor area)"]),
        SurveyQuestion(question: "How many hours are you away from home each day?", options: ["Low (Less than 4 hours)", "Normal (4-8 hours)", "Too much (More than 8 hours)"]),
        SurveyQuestion(question: "What is your typical daily routine like (morning, afternoon, evening)?", options: ["Low (Very flexible, unpredictable)", "Normal (Structured but allows some flexibility)", "Too much (Very busy, little room for flexibility)"]),
        SurveyQuestion(question: "How do you handle stress or busy days? Would a pet be part of that?", options: ["Low (I’m calm and can handle stress well)", "Normal (I get stressed but can manage)", "Too much (I struggle with stress and need quiet time)"]),
        SurveyQuestion(question: "Do you engage in physical activities like hiking, jogging, or walking your pet daily?", options: ["Low (Rarely engage in physical activities)", "Normal (Occasionally go for walks or hikes)", "Too much (Daily physical activity and exercise)"]),
        SurveyQuestion(question: "Do you travel frequently for work or leisure? If so, how often?", options: ["Low (Rarely travel, maybe once a year)", "Normal (Occasionally, a few times a year)", "Too much (Frequent travel, 1-2 times a month)"]),
        SurveyQuestion(question: "How do you spend your weekends? Is there time for a pet to join in?", options: ["Low (I prefer staying home with no plans)", "Normal (I have time for both personal activities and my pet)", "Too much (My weekends are packed with activities and outings)"]),
        SurveyQuestion(question: "What is your usual living environment like (quiet, noisy, fast-paced)?", options: ["Low (Very quiet, peaceful environment)", "Normal (A balanced environment with some noise)", "Too much (Very busy, noisy, fast-paced environment)"]),
        SurveyQuestion(question: "Do you have any other pets at home currently?", options: ["Low (No other pets)", "Normal (1-2 pets)", "Too much (3+ pets)"]),
        SurveyQuestion(question: "What kind of relationship do you expect to have with your pet (companion, helper, guard dog, etc.)?", options: ["Low (Just a pet for occasional companionship)", "Normal (A companion and part of daily life)", "Too much (A pet with a specific role, like assistance or protection)"]),
        SurveyQuestion(question: "How do you handle household chores and responsibilities? Would you have time for pet care in your daily routine?", options: ["Low (I have plenty of time for pet care and chores)", "Normal (I manage chores and can dedicate time to my pet)", "Too much (Chores and responsibilities take up most of my time)"])
    ]
    
    @Published var answers: [String] = []
    
    init() {
        answers = Array(repeating: "", count: questions.count)
    }

    func saveAnswers() {
        print("User Answers: \(answers)")
    }
}
