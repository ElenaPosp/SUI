//
//  ContentView.swift
//  Shared
//
//  Created by e.pospelova on 08.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, Elena and swiftUI!!!")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.orange)
                .lineLimit(0)

            HStack {
                Text("Офигенно крутая весч")
                    .font(.subheadline)
                    .fontWeight(.light)
                Spacer()
                Text("Рили")
            }
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
