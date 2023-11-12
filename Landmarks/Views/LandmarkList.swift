//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Maruf Khan on 12/11/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks :[Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(
                    "Show Favourites Only",
                    isOn: $showFavoritesOnly
                ).padding(.vertical)
                ForEach(filteredLandmarks) {
                    landmark in
                    NavigationLink(destination: {
                        LandmarkDetails(landmark: landmark)
                    }, label: {
                        LandmarkRow(landmark: landmark)
                    })
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
                .font(.largeTitle).bold()
        }

    }
}

#Preview {
    LandmarkList()
}
