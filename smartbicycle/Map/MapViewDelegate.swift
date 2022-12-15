//
//  MapViewDelegate.swift
//  LocationEx
//
//  Created by itst on 28/11/2022.
//

import SwiftUI
import MapKit
import UIKit
class MapViewDelegate : NSObject, MKMapViewDelegate {
 func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
 let polygonRenderer = MKPolygonRenderer(overlay: overlay);
 polygonRenderer.strokeColor = UIColor.clear;
 polygonRenderer.fillColor = UIColor.blue;
 polygonRenderer.alpha = 0.1;
 return polygonRenderer;
 }
}
