//
//  smartbicycleApp.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
// commit 3

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
