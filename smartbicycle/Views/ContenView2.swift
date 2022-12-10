//
//  ContenView2.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
//

import SwiftUI
struct ContentView2: View {
 var body: some View {
 TabView {

 LandmarkList().tabItem ({
 Image(systemName: "mappin.circle.fill")
 Text("")
 }).tag(0)

 MapView().tabItem ({
Image(systemName: "map.fill")
 Text("Map")
 }).tag(1)

// ControlView().tabItem({
// Image(systemName: "globe")
// Text("My Location")
// }).tag(2)
    
 MailFolderListView().tabItem({
    Image(systemName: "globe")
    Text("My Location")
    }).tag(3)
 }
 }
}

struct ContentView2_Previews: PreviewProvider {
 static var previews: some View {
 ContentView2()
    .environmentObject(ModelData())
    .environmentObject(Store())
 }
}

