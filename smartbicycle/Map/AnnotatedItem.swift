//
//  AnnotatedItem.swift
//  LocationEx
//
//  Created by itst on 28/11/2022.
//

import MapKit
import Foundation
struct AnnotatedItem : Identifiable {
 let id = UUID()
 let name : String
 var coordinate : CLLocationCoordinate2D
}
