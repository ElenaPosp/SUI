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

        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
