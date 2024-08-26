//
//  WelcomeView.swift
//  YumBook
//
//  Created by Can Dindar on 2024-08-23.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var isActive = false
    @State var size = 0.8
    @State var opacity = 0.5
      
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            
        
        ZStack {
         Image("tacos")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .colorMultiply(Color.gray)
            VStack {
                Text("Welcome to")
                    .bold()
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.7), radius: 2, x: 2, y: 2)
                    .padding(.horizontal, 50)
                    .background(.red.opacity(0.6)).cornerRadius(15)
                Text("YumBook")
                    .padding(1)
                    .font(.system(size: 50))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(1), radius: 2, x: 2, y: 2)
                    .padding(.horizontal, 50)
                    .background(.red.opacity(0.6)).cornerRadius(15)
                
                
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 1.0
                    self.opacity = 1.0
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                self.isActive = true
            }
            }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
