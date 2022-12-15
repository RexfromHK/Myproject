//
//  OverlayMapView.swift
//  smartbicycle
//
//  Created by rex on 2022/12/8.
//

import Foundation
//
//  OverlayMapView.swift
//  LocationEx
//
//  Created by itst on 28/11/2022.
//

import SwiftUI
import MapKit
import UIKit
struct OverlayMapView : UIViewRepresentable {

 let delegate = MapViewDelegate()

 func makeUIView(context: Context) -> MKMapView {
 return MKMapView()
 }

 func updateUIView(_ uiView: MKMapView, context: Context) {
 let overlayCoords = [
 CLLocationCoordinate2D(latitude: 22.374980, longitude: 114.175971)
 ]
 let overlay = MKPolygon(coordinates: overlayCoords, count: 4);
 let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01);
    let coord = CLLocationCoordinate2D(latitude: 22.374980, longitude: 114.175971);
 let region = MKCoordinateRegion(center: coord, span: span)
 uiView.delegate = delegate
 uiView.setRegion(region, animated: false);
 uiView.addOverlay(overlay);

 }

 typealias UIViewType = MKMapView

 //@StateObject

 private var view = MKMapView()
}
