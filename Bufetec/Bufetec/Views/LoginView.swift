//
//  LoginView.swift
//  Bufetec
//
//  Created by Jorge on 17/09/24.
//

import SwiftUI

struct LoginView: View {
    // Declaramos el estado para la animación del logo
    @State private var animateLogo = false

    var body: some View {
        ZStack {
            // Fondo
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.1)]),
                           startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                // Logo con animación de Fade-In
                Image("bufetec_logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 50)
                    .opacity(animateLogo ? 1 : 0) // Animamos la opacidad
                    .animation(.easeIn(duration: 1.5), value: animateLogo) // Duración de la animación
                    .onAppear {
                        animateLogo = true // Cuando aparece, activamos la animación
                    }
                
                Spacer()
                
                // Botón de Google Sign-In
                Button(action: {
                    // Acción del botón de Google
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
                
                // Texto "continuar como Cliente"
                Text("continuar como Cliente")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.black.opacity(0.8))
                
                // Botón "Continuar"
                Button(action: {
                    // Acción del botón Continuar
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
