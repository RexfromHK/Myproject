//
//  ContentView.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
//

import SwiftUI
import CoreData

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
                    Text("Sbicycle-Login")
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
                        
  //1
                    
                        NavigationLink(
                            destination: Home(),
                            label:{
                             Text("Login")
                                .padding()
                                .foregroundColor(.white)
                                .frame(width: 300, height: 50)
                                .background(Color.green)
                                .cornerRadius(10)
                                    })
                    
                    
                    NavigationLink(
                        destination: Registration(),
                        label:{
                         Text("Registration")
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
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .environmentObject(ModelData())
        
    }
}
