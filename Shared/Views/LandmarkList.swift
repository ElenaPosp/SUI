//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by e.pospelova on 22.02.2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        var decoder = Decoder()
        let landmarks = decoder.landmarks

        NavigationView {

            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }

            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
