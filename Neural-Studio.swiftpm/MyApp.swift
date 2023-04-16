import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
//            ContentView()
        }
    }
}

//extension to double class to add functions so that I can truncate float values

extension Double {
    func round(_ places:Int) -> Double {
        let d = pow(10.0, Double(places))
        return (self * d).rounded() / d
    }
    func truncate(_ places:Int) -> Double {
        let d = pow(10.0, Double(places))
        return (self*d).rounded(.towardZero) / d
    }
}

func percentToString(percent: Double) -> String {
    return "\(String(percent))%"
}
