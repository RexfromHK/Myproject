//
//  ContenView2.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
//

import SwiftUI
struct Home: View {
    
    
 var body: some View {
 
    
 TabView {


 LandmarkList().tabItem ({
 Image(systemName: "mappin.circle.fill")
 Text("Shop")
 }).tag(0)

 MapView().tabItem ({
Image(systemName: "map.fill")
 Text("Map")
 }).tag(1)

 wheatherView().tabItem({
 Image(systemName: "smoke")
 Text("Weather")
 }).tag(2)
    
    Todolist().tabItem({
    Image(systemName: "square.and.pencil")
    Text("Todolist")
    }).tag(3)
    
    personal().tabItem({
    Image(systemName: "person")
    Text("Person")
    }).tag(4)
    
 }

 //.navigationBarTitle("")
 .navigationBarBackButtonHidden(true)
 .navigationBarHidden(true)
    

    
 }
}

struct HomeView_Previews: PreviewProvider {
 static var previews: some View {
    Home()
    .environmentObject(ModelData())
    
 }
}

