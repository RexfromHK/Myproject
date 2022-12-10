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
    @State private var pointOfInterest = [
     AnnotatedItem(name: "1", coordinate: .init(latitude: 22.39002, longitude: 114.19834)),
     AnnotatedItem(name: "2", coordinate: .init(latitude: 22.24825, longitude: 114.17566)),
     AnnotatedItem(name: "3", coordinate: .init(latitude: 22.27723, longitude: 114.14519))
    ]

    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 22.3809503, longitude:
    114.1951712), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
     VStack {
     Map(coordinateRegion: $region, annotationItems: pointOfInterest) {
     item in
     MapMarker(coordinate: item.coordinate)
     }
     }
    }
    
    
    
    
    
struct SpotsView_Previews : PreviewProvider {
 static var previews: some View {
 MapView()
 }
    
    
}


}

