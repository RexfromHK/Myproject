//
//  ContentView.swift
//  StorageEX
//
//  Created by rex on 2022/12/14.
//

import SwiftUI
import CoreData

struct Todolist: View {
    @State var showingSheet : Bool = false
    @Environment(\.managedObjectContext) private var viewContext
   @FetchRequest(
   sortDescriptors: [NSSortDescriptor(keyPath: \Device.timestamp, ascending: true)], animation: .default)
   private var devices: FetchedResults<Device>

    var body: some View {
NavigationView {
   List {
   ForEach(devices) { device in
    VStack(alignment: .leading) {
        Text("\(device.name!)")

    }
   }
   .onDelete(perform: deleteItems)
   }
   .toolbar { ToolbarItem {
   Button(action: { showingSheet = true
   }) {
   Label("Add Item", systemImage: "plus")
   } }
   }
   }.sheet(isPresented: $showingSheet, content: {
    AddDeviceView(showingSheet: $showingSheet)
    
   })
        
        
        

   }


    private func deleteItems(offsets: IndexSet) {
        withAnimation {
   offsets.map { devices[$0] }.forEach(viewContext.delete)
        do {
   try viewContext.save() } catch {
   let nsError = error as NSError
   fatalError("Unresolved error \(nsError), \(nsError.userInfo)") }
   } }
    
}



struct Todolist_Previews: PreviewProvider {
    static var previews: some View {
        Todolist().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
