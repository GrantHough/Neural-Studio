//
//  InputOutputSizeView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct InputOutputSizeView: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack (alignment: .top) {
                        Text("Input and Output Size")
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
                
                Text("You may wonder why the input size on the neural network in your Studio is 784 nodes and the output size is 10 nodes. Well, each of the 784 input nodes represents a pixel in a 28 pixel by 28 pixel image of a digit and the 10 nodes at the end represent 1 of 10 possible digits (i.e., 0, 1, 2...9).")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.04: g.size.height * 0.04, weight: .regular))
                
                Divider()
                
                HStack {
                    Spacer()
                    Image("onehiddenlayer")
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

struct InputOutputSizeView_Previews: PreviewProvider {
    static var previews: some View {
        InputOutputSizeView()
    }
}
