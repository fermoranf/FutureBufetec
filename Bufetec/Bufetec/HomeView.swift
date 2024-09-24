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
    
    @State private var navigateToHomePage = false
    @State private var userLoggedIn = (Auth.auth().currentUser != nil)
    var body: some View {
        VStack{
            NavigationView{
                if userLoggedIn {
                    NavigationLink(
                    destination: HomePageView(),isActive: $navigateToHomePage, // Automatically activates navigation
                        label: {
                            EmptyView() // No need for a visible label
                            }
                    )
                    .onAppear {
                        // Trigger the navigation as soon as the condition is met
                    navigateToHomePage = true
                }
            }
                else{
                    LoginView()
                }
                
            }
        }
            .onAppear(){
                Auth.auth().addStateDidChangeListener{auth,user in
                    if(user != nil){
                        userLoggedIn = true
                    }else{
                        userLoggedIn=false
                    }
                }
            }
        }
    }
    #Preview {
        HomeView()
    }
