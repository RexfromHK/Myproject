//
//  ContentView.swift
//  ContactSwiftUI
//
//  Created by itst on 29/11/2022.
//

import SwiftUI
import CoreData

struct wheatherView: View {

 @StateObject var model = APIModel()

 @State var nameStr : String = ""
 @State var telStr : String = ""

 var body: some View {
 VStack {
 Image(systemName: "smoke")
 .imageScale(.large)
 .foregroundColor(.accentColor)
 Text("Hong Kong")


 List {
 ForEach(model.contacts) {
 contact in

VStack(alignment: .leading) {
    
 Label("\(contact.week)", systemImage: "smoke")
 Label("Min-temp : \(contact.Mintemp) , Max-temp : \(contact.Maxtemp)", systemImage: "")
 Label("\(contact.detail)", systemImage: "")

}
 }
 }
 }
 .onAppear() {
 model.fetch()
 }
 //.navigationTitle("")
 .navigationBarHidden(true)
    
 }
    
}

struct wheatherView_Previews: PreviewProvider {
    static var previews: some View {
        wheatherView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
