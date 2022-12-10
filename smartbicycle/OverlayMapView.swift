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
 CLLocationCoordinate2D(latitude: 22.391205, longitude: 114.197092),
 CLLocationCoordinate2D(latitude: 22.391686, longitude: 114.198229),
 CLLocationCoordinate2D(latitude: 22.389583, longitude: 114.199039),
 CLLocationCoordinate2D(latitude: 22.389251, longitude: 114.19824)
 ]
 let overlay = MKPolygon(coordinates: overlayCoords, count: 4);
 let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005);
 let coord = CLLocationCoordinate2D(latitude: 22.390208, longitude: 114.198133);
 let region = MKCoordinateRegion(center: coord, span: span)
 uiView.delegate = delegate
 uiView.setRegion(region, animated: false);
 uiView.addOverlay(overlay);

 }

 typealias UIViewType = MKMapView

 //@StateObject

 private var view = MKMapView()
}
