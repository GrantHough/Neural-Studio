//
//  LearningRateEpochsView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct LearningRateEpochsView: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack (alignment: .top) {
                        Text("Learning Rate and Epochs")
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
                
                Text( "The concepts of a learning rate and an epoch go hand-in-hand. The learning rate is how fast the model learns. The higher the learning rate, the larger the step during the optimization process known as gradient descent. An epoch is one iteration of gradient descent. Each epoch appropriates to a step down the gradient.")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.04: g.size.height * 0.04, weight: .regular))
                
                Divider()
               
                
            }
            .padding([.leading, .trailing], g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07)
            .padding(.bottom, g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045)
            
        }
    }
}

struct LearningRateEpochsView_Previews: PreviewProvider {
    static var previews: some View {
        LearningRateEpochsView()
       
    }
}
