//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by itst on 21/11/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {

            MapView2(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)


            VStack(alignment: .leading) {
                HStack {
                    Text("Shop Name : \(landmark.name)")
                        .font(.system(size:22))
                }

                Divider()
                HStack {
                    Text("Phone Number : \(landmark.phone)")
                        .font(.system(size:22))
                }
                Divider()
                HStack {
                    Text("Address : \(landmark.address)")
                        .font(.system(size:22))
                }
                
                Divider()
                HStack {
                    Text("Location : (\(landmark.locationCoordinate.latitude),\(landmark.locationCoordinate.longitude))")
                        
                        .font(.system(size:22))
                }
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
