//
//  ContentView.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
//

import SwiftUI
import CoreData


struct Registration: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false

    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(4.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                    
                VStack {

                    
                    Text("Registration")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
               
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Retype Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
  //1
                        NavigationLink(
                            destination: Login(),
                            label:{
                             Text("Create Account")
                                .padding()
                                .foregroundColor(.white)
                                .frame(width: 300, height: 50)
                                .background(Color.green)
                                .cornerRadius(10)
                                    })
                    
                    NavigationLink(
                        destination: Login(),
                        label:{
                         Text("Go to login now")
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(10)
                                })
                    
                   }
                }
            }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
    }
    


struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
            .environmentObject(ModelData())
        
    }
}
