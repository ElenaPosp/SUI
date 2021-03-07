//
//  CircleImage.swift
//  SwiftUIExample
//
//  Created by e.pospelova on 10.02.2021.
//

import SwiftUI

struct CircleImage: View {
    let image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
