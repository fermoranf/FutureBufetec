//
//  HomeView.swift
//  Bufetec
//
//  Created by Alumno on 18/09/24.
//
import SwiftUI
import Firebase
import FirebaseAuth

struct HomeView: View {
    
    @State private var userLoggedIn = (Auth.auth().currentUser != nil)
    
    var body: some View {
        NavigationView {
            VStack {
                if userLoggedIn {
                    // Navigate to HomePage if the user is logged in
                    HomePageView()
                } else {
                    // Stay on the Login page if the user isn't logged in
                    LoginView()
                }
            }
            .onAppear {
                // Listen for changes in authentication state
                Auth.auth().addStateDidChangeListener { auth, user in
                    userLoggedIn = (user != nil)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
