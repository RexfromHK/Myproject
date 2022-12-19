//
//  personal.swift
//  smartbicycle
//
//  Created by rex on 2022/12/19.
//

import Foundation
import SwiftUI

struct personal: View {
    var body: some View {
        NavigationLink(
    destination: Login(),
    label:{
     Text("Logout")
        .foregroundColor(.white)
        .frame(width: 300, height: 50)
        .background(Color.yellow)
        .cornerRadius(10)
            })
    }
}


struct personal_Previews: PreviewProvider {
 static var previews: some View {
    personal()
    .environmentObject(ModelData())
    
 }
}

