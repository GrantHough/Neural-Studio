//
//  MNISTView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/17/23.
//

import SwiftUI

struct MNISTView: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack (alignment: .top) {
                        Text("MNIST Dataset")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.1: g.size.height * 0.1, weight: .bold))
                        Spacer()
                        Text("Appendix")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.035: g.size.height * 0.035, weight: .bold))
                            .padding(.horizontal, g.size.height > g.size.width ? g.size.width * 0.01: g.size.height * 0.01)
                        Image("NeuralStudioLogo1")
                            .resizable()
                            .frame(width: g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045, height: g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045)
                            .cornerRadius(8)
                    }
                }
                .padding(.top, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                
                Divider()
                
                Text("The neural network you see in your Studio is trained on the MNIST dataset. It's a very famous dataset used for learning and benchmarking various forms of logistic regression models. Below are some examples of images from the datset.")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.04: g.size.height * 0.04, weight: .regular))
                
                Divider()
                
                HStack {
                    Spacer()
                    Image("mnist")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06)
                    
                    Spacer()
                }
                .padding(20)
                
            }
            .padding([.leading, .trailing], g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07)
            .padding(.bottom, g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045)
            
        }
    }
}

struct MNISTView_Previews: PreviewProvider {
    static var previews: some View {
        MNISTView()
    }
}
