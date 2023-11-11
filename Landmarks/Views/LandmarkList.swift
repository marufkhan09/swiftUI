//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Maruf Khan on 12/11/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {landmark in
           LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
