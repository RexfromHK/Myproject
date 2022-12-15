//
//  SpotsView.swift
//  LocationEx
//
//  Created by itst on 28/11/2022.
//

import SwiftUI
import MapKit
import CoreLocation
struct MapView : View {
    @StateObject var locationModel = LocationModel()
    @State var coordinateRegion : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0.01, longitude: 0.01),
                                                                          span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    @State private var pointOfInterest = [
        AnnotatedItem(name: "1", coordinate: .init(latitude: 22.3732233, longitude: 114.1727027)),
        AnnotatedItem(name: "2", coordinate: .init(latitude: 22.3738204, longitude: 114.1756065)),
        AnnotatedItem(name: "3", coordinate: .init(latitude: 22.3744362, longitude: 114.1771749)),
        AnnotatedItem(name: "4", coordinate: .init(latitude: 22.3746990, longitude: 114.1774646)),
        AnnotatedItem(name: "5", coordinate: .init(latitude: 22.3746991, longitude: 114.1774646))
    ]

    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 22.3732233, longitude:
                                                                                                        114.1727027), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
     VStack {
     Map(coordinateRegion: $region, annotationItems: pointOfInterest) {
     item in
     MapMarker(coordinate: item.coordinate)
     }
        
        
        
        //
        if locationModel.authorizationStatus == .authorizedWhenInUse ||
        locationModel.authorizationStatus == .authorizedAlways {

            Text("My location as below: (\(locationModel.lastLocation?.coordinate.latitude ?? 0),\(locationModel.lastLocation?.coordinate.longitude ?? 0))")
        Map(coordinateRegion: $locationModel.coordinateRegion)

        } else {
        Button("Please allow to get your location", action: {
        locationModel.requestPermission()
        })
        }
        //
     }
     //.navigationTitle("")
     .navigationBarHidden(true)
        
    }
    
    
    
    
    
struct SpotsView_Previews : PreviewProvider {
 static var previews: some View {
 MapView()
 }
    
    
}


}

