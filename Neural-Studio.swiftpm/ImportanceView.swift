//
//  ImportanceView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct ImportanceView: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("But why is this important?")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.1: g.size.height * 0.1, weight: .bold))

                }
                .padding(.top, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                
                Spacer()
                //maybe put logo here when it is vertical to fill white space? when it's horizontal, it's full
                
                Text("Hyperparameters are the only values that you manually modify to optimize neural networks. They can make or break a network.")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .semibold))
                
                NavigationLink(destination: NeuralNetIntroView(), label: {
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

struct ImportanceView_Previews: PreviewProvider {
    static var previews: some View {
        ImportanceView()
    }
}
