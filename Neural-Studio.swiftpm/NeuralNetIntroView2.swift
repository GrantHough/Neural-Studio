//
//  NeuralNetIntroView2.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct NeuralNetIntroView2: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("How do they work?")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.1: g.size.height * 0.1, weight: .bold))
                    
                }
                .padding(.top, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                
                Spacer()
                
                Text("Values propogate forward through the nodes, being multiplied and added to values called weights and biases respectively to eventually form an output, such as a prediction.")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .semibold))
                
                NavigationLink(destination: NeuralNetIntroView3(), label: {
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

struct NeuralNetIntroView2_Previews: PreviewProvider {
    static var previews: some View {
        NeuralNetIntroView2()
    }
}
