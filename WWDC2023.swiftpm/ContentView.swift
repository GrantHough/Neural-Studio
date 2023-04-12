import SwiftUI

struct ContentView: View {

    var body: some View {
        
        VStack {
            //Title
            Text("Your Neural Network")
                .font(.system(size: 84, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(10)
            
            //Neural Network
            Rectangle()
                .padding([.leading, .trailing], 50)
                .padding([.top, .bottom], 20)
                .frame(maxHeight: UIScreen.main.bounds.height * 0.6)
            
            //Container for variables
            HStack {
                
                VStack {
                    
                    Text("Epochs: 4")
                    Text("Learning Rate: 0.01")
                    Text("Loss Function: Sigmoid")
                    Text("Layers: 4")

                }
                
                VStack {
                    
                    Text("Training Time: 24.5 seconds")
                    Text("Prediction Time: 0.2 seconds")
                    Text("Accuracy: 95.4%")
                    Text("Model Size: 2.6 MB")

                }
   
   
            }
        }
    }
}

