import SwiftUI

@main
struct PetAlignApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashView()
            }
        }
    }
}

class NavigationManager: ObservableObject {
    static let shared = NavigationManager()
    @Published var currentView: AnyView?
    
    func navigateToIntro() {
        self.currentView = AnyView(IntroView())
    }
}
