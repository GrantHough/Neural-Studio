//
//  NeuralNetIntroView3.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct NeuralNetIntroView3: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("But we can't control weights and biases.")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.095: g.size.height * 0.095, weight: .bold))
                    
                }
                .padding(.top, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                
                Spacer()
                
                Text("Weights and biases are automatically optimized through a process called gradient descent. So what can we control?")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .semibold))
                
                NavigationLink(destination: HyperparametersView(), label: {
                    Text("Next Page")
                        .padding(.horizontal, g.size.height > g.size.width ? g.size.width * 0.041: g.size.height * 0.041)
                        .padding(.vertical,  g.size.height > g.size.width ? g.size.width * 0.027: g.size.height * 0.027)
                        .foregroundColor(.white)
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.043: g.size.height * 0.043, weight: .semibold))
                        .background(Color("Primary Accent"))
                })
                
            }
            .padding([.leading, .trailing], g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07)
            .padding(.bottom, g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045)
            
        }
    
    }
}

struct NeuralNetIntroView3_Previews: PreviewProvider {
    static var previews: some View {
        NeuralNetIntroView3()
    }
}
