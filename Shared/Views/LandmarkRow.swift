//
//  LandmarkRow.swift
//  SwiftUIExample
//
//  Created by e.pospelova on 22.02.2021.
//

import SwiftUI

struct LandmarkRow: View {

    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 56, height: 56)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        var decoder = Decoder()
        Group {
            LandmarkRow(landmark: decoder.landmarks[0])
            LandmarkRow(landmark: decoder.landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
