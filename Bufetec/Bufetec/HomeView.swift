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
        VStack{
            if(userLoggedIn){
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            }else{
                LoginView()
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
