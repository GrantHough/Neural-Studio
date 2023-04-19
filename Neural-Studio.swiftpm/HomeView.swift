//
//  HomeView.swift
//  Neural Studio
//
//  Created by Grant Hough on 4/16/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            GeometryReader{g in
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        HStack (alignment: .top) {
                            Text("Home")
                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.1: g.size.height * 0.1, weight: .bold))
                            Spacer()
                            Text("Neural Studio")
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
                    
                    HStack(alignment: .center) {
                        
                        VStack(alignment: .leading) {
                            
                            Text("Your Studio")
                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .bold))
                                .padding(.bottom, 8)
                            Text("Customize hyperparameters and quantify how they affect a neural network's performance in real-time.")
                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045, weight: .regular))
                               
                        }
                        .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)

                        Spacer()
                        
                        NavigationLink(destination: ContentView(), label: {
                            Text("Visit")
                                .padding(.horizontal, g.size.height > g.size.width ? g.size.width * 0.041: g.size.height * 0.041)
                                .padding(.vertical,  g.size.height > g.size.width ? g.size.width * 0.027: g.size.height * 0.027)
                                .foregroundColor(.white)
                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.038: g.size.height * 0.038, weight: .semibold))
                                .background(Color("Primary Accent"))
                        })
                       
                    }
                    .padding(.vertical, 20)
                    
                    Divider()
                    
                    HStack {
                        VStack(alignment: .leading) {
                        
                            VStack(alignment: .leading) {
                                
                                Text("Appendix")
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .bold))
                                    .padding(.bottom, 8)
                                Text("View info on neural networks and hyperparameters to gain a better understanding of your Studio.")
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045, weight: .regular))
                                   
                            }
                            .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                            
                            
                            NavigationLink(destination: LearnView(), label: {
                                Text("Visit")
                                    .padding(.horizontal, g.size.height > g.size.width ? g.size.width * 0.041: g.size.height * 0.041)
                                    .padding(.vertical,  g.size.height > g.size.width ? g.size.width * 0.027: g.size.height * 0.027)
                                    .foregroundColor(.white)
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.038: g.size.height * 0.038, weight: .semibold))
                                    .background(Color("Primary Accent"))
                            })
                            
                            Spacer()
                            
                           
                        }
                        
                        .padding(.vertical, 20)
    //
    //                    Divider()
    //
    //                    HStack(alignment: .center) {
    //
    //                        VStack(alignment: .leading) {
    //
    //                            Text("Test")
    //                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05, weight: .bold))
    //                                .padding(.bottom, 8)
    //                            Text("Draw your own digits to test out a MNIST model with good hyperparameters.")
    //                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.038: g.size.height * 0.038, weight: .semibold))
    //
    //                        }
    //                        .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
    //
    //                        Spacer()
    //
    //                        NavigationLink(destination: TestView(classifier: ImageClassifier()), label: {
    //                            Text("Visit")
    //                                .padding(.horizontal, g.size.height > g.size.width ? g.size.width * 0.041: g.size.height * 0.041)
    //                                .padding(.vertical,  g.size.height > g.size.width ? g.size.width * 0.027: g.size.height * 0.027)
    //                                .foregroundColor(.white)
    //                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.038: g.size.height * 0.038, weight: .semibold))
    //                                .background(Color("Primary Accent"))
    //                        })
    //
    //                    }
    //                    .padding(.vertical, 20)
    //
                        Divider()
                        
    //
    //
                        VStack(alignment: .leading) {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Go Back")
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.06: g.size.height * 0.06, weight: .bold))
                                    .padding(.bottom, 8)
                                Text("Are you still unsure about Neural Studio? Revisit the entry storyboard and review.")
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045, weight: .regular))
                                   
                            }
                            .padding(.trailing, g.size.height > g.size.width ? g.size.width * 0.05: g.size.height * 0.05)
                   
                            NavigationLink(destination: WelcomeView(), label: {
                                Text("Visit")
                                    .padding(.horizontal, g.size.height > g.size.width ? g.size.width * 0.041: g.size.height * 0.041)
                                    .padding(.vertical,  g.size.height > g.size.width ? g.size.width * 0.027: g.size.height * 0.027)
                                    .foregroundColor(.white)
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.038: g.size.height * 0.038, weight: .semibold))
                                    .background(Color("Primary Accent"))
                            })
                            Spacer()
                            
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal, 24)
                        
                    }
                    .padding(.top, 10)
                }
                .padding([.leading, .trailing], g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07)
                .padding(.bottom, g.size.height > g.size.width ? g.size.width * 0.045: g.size.height * 0.045)
                
              
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
