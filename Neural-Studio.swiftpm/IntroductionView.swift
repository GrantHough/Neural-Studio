//
//  IntroductionView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        GeometryReader{g in
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("So what is Neural Studio?")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.1: g.size.height * 0.1, weight: .bold))
                    
                }
                .padding(.top, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
            
                
                //maybe put logo here when it is vertical to fill white space? when it's horizontal, it's full
                Spacer()
                			
                Text("It's an app that allows you to try various combinations of hyperparameters to see how they affect the performance of a neural network trained to classify images (i.e., of handwritten digits).")
                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .semibold))
                
                NavigationLink(destination: ImportanceView(), label: {
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

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
