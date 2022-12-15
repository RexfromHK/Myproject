//
//  LandmarkList.swift
//  Landmarks
//
//  Created by itst on 21/11/2022.
//

import SwiftUI


struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {


                ForEach(filteredLandmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark),
                 label: {
                    LandmarkRow(landmark: landmark)
                 })
              }
            }
            //.navigationTitle("Bicycle Shop")
            .navigationBarHidden(true)
            
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
