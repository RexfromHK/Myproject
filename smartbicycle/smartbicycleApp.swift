//
//  smartbicycleApp.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
//

import SwiftUI

@main
struct smartbicycleApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var modelData = ModelData()
    @EnvironmentObject var store:Store
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
                .environmentObject(Store())
            
        }
    }
}
