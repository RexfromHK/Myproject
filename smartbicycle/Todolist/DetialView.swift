//
//  DetialView.swift
//  StorageEX
//
//  Created by rex on 2022/12/14.
//

import Foundation
import SwiftUI
struct DetailView : View {
@Environment(\.managedObjectContext) private var viewContext
@Environment(\.presentationMode) var presentationMode
    var device : Device
@State var name : String = ""
    @State var version : String = ""
    @State var company : String = ""
    
fileprivate func saveAndBack() {
    device.name = name
    device.company = company
    device.version = version
    device.timestamp = Date()
try? viewContext.save()
    self.presentationMode.wrappedValue.dismiss()
}
var body: some View {
VStack {
Text("Create a new Device").padding()
TextField("Name", text: $name) .padding()
TextField("Version", text: $version) .padding()
TextField("Company", text: $company) .padding()
HStack { Button(action: {
saveAndBack() }, label: {
Text("Save") })
}
Spacer() }.onAppear {
name = device.name!
version = device.version!
company = device.company!
} }
}
