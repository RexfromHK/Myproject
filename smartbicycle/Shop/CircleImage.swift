//
//  CircleImage.swift
//  Landmarks
//
//  Created by itst on 15/11/2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image


            .shadow(radius: 7)
            .cornerRadius(40)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Turtlerock"))
    }
}
