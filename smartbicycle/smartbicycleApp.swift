//
//  smartbicycleApp.swift
//  smartbicycle
//
//  Created by rex on 2023/01/10.
// commit 20

import SwiftUI

@main
struct smartbicycleApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var modelData = ModelData()
 
    
    var body: some Scene {
        WindowGroup {
            Login()
                .environmentObject(modelData)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
