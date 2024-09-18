//
//  LoginView.swift
//  Bufetec
//
//  Created by Jorge on 17/09/24.
//

import SwiftUI


struct LoginView: View {
    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.1)]),
                           startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                // Logo with Fade-In Animation
                Image("bufetec_logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 50)
                    .opacity(0.9)
                
                Spacer()
                
                // Google Sign-In Button
                Button(action: {
                    // Google sign-in action
                }) {
                    HStack {
                        Image("google_icon")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("Sign up with Google")
                            .font(.system(size: 18, weight: .semibold))
                    }
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 3)
                }
                
                
                // Dot Indicators and Text
                VStack(spacing: 10) {
                    HStack {
                        Circle().frame(width: 10, height: 10).foregroundColor(.gray.opacity(0.6))
                        Circle().frame(width: 10, height: 10).foregroundColor(.black)
                        Circle().frame(width: 10, height: 10).foregroundColor(.gray.opacity(0.6))
                    }
                    Text("continuar como Cliente")
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.8))
                }
                
                
                // Continue Button
                Button(action: {
                    // Continue action
                }) {
                    Text("Continuar")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(15)
                        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 3)
                }
                .padding(.horizontal, 40)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

