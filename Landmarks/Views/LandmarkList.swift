//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Maruf Khan on 12/11/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) {landmark in
                NavigationLink(destination: {
                    LandmarkDetails(landmark: landmark)
                }, label: {
                    LandmarkRow(landmark: landmark)
                })
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Hello")
        }

    }
}

#Preview {
    LandmarkList()
}
