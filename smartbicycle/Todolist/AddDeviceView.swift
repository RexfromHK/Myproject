//
//  AddDeviceView.swift
//  StorageEX
//
//  Created by rex on 2022/12/14.
//

import SwiftUI
struct AddDeviceView : View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @Binding var showingSheet : Bool
   @State var name : String = ""
    @State var version : String = ""
    @State var company : String = ""
    
    var body: some View { VStack {
   Text("Create a todolist item").padding()
   TextField("Detail..", text: $name) .padding()
   
   //TextField("Company", text: $company) .padding()
   HStack { Button(action: {
   createDevice()
   }, label: { Text("Save")
   })
   Button(action: {
   showingSheet = false
   }, label: { Text("Cancel")
   }) }
   Spacer() }
   }
    
    fileprivate func createDevice() {
   let device = Device(context: viewContext)
        device.name = name
   device.company = company
   device.version = version
   device.timestamp = Date()
   try? viewContext.save()
   self.name = ""
        self.version = ""
        self.company = ""
   showingSheet = false }
}

