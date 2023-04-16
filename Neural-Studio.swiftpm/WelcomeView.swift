//
//  WelcomeView.swift
//  WWDC2023
//  Neural Studio
//  Created by Grant Hough on 4/15/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            GeometryReader{g in
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Welcome to")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.08: g.size.height * 0.08, weight: .semibold))
                        Text("Neural Studio")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.13: g.size.height * 0.13, weight: .bold))
                        
                    }
                    .padding(.top, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                    
                    Spacer()
                    //maybe put logo here when it is vertical to fill white space? when it's horizontal, it's full
                    
                    Text("Visualize the effects of hyperpameters on neural network performance.")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07, weight: .semibold))
                    
                    NavigationLink(destination: ContentView(), label: {
                        Text("Get Started")
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
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
