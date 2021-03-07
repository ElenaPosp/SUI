//
//  LandmarkDetail.swift
//  SwiftUIExample
//
//  Created by e.pospelova on 07.03.2021.
//

import SwiftUI

struct LandmarkDetail: View {

    let landmark: Landmark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.light)
                    .lineLimit(0)

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                    .fontWeight(.light)
                Text(landmark.description)
            }
            .padding()

//            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        var dec = Decoder()
        LandmarkDetail(landmark: dec.landmarks[3])
    }
}
