//
//  ActivationFunctionsView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct ActivationFunctionsView: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack (alignment: .top) {
                        Text("Activation Functions")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.1: g.size.height * 0.1, weight: .bold))
                        Spacer()
                        Text("Learn")
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
                
                Text("Activation functions serve many purposes, both simple and complex. Mainly, they help to add non-linearity to a model so that it can recognize non-linear relationships. For example, the relationship between rainfall and apple yield on a farm is not linear.")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.04: g.size.height * 0.04, weight: .semibold))
                
                Divider()
                
                ScrollView() {
                    HStack(alignment: .center) {
                        
                        Text("Sigmoid Function - best for probabilities or binary classification, ranges from 0 to 1")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.043: g.size.height * 0.043, weight: .medium))
                            .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                        
                        Spacer()
                        
                        Image("sigmoid")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                       
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)
                    
                    Divider()
                    
                    HStack(alignment: .center) {
                        
                        Text("Tanh Function - also best for probabilities or binary classification, 0-centric, ranges from -1 to 1")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.043: g.size.height * 0.043, weight: .medium))
                            .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                        
                        Spacer()
                        
                        Image("tanh")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                       
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)

                    
                    Divider()
                    
                  
                    HStack(alignment: .center) {
                        
                        Text("ReLU Function - fast calculation time, does not allow for a negative gradient, ranges from 0 to infinity")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.043: g.size.height * 0.043, weight: .medium))
                            .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                        
                        Spacer()
                        
                        Image("relu")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                       
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)

                    Divider()
                    
                    HStack(alignment: .center) {
                        
                        Text("Leaky ReLU Function - also has quick calculation time, tolerance for negative gradient, ranges from -infinity to infinity")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.043: g.size.height * 0.043, weight: .medium))
                            .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                        
                        Spacer()
                        
                        Image("leaky relu")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                       
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)

                }
                
                
            }
            .padding([.leading, .trailing], g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07)
            .padding(.bottom, g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045)
            
        }
    }
}

struct ActivationFunctionsView_Previews: PreviewProvider {
    static var previews: some View {
        ActivationFunctionsView()
    }
}
