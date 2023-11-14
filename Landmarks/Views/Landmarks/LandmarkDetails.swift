//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Maruf Khan on 12/11/23.
//

import SwiftUI

struct LandmarkDetails: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            
            CircleImage(image: landmark.image).offset( y: -130).padding(.bottom,-130)
            
            VStack(alignment: .leading, content: {
                HStack {
                    Text(landmark.name).font(.title)
                        .foregroundColor(.black)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }
            }).padding(.all)
            Divider()
            VStack(alignment: .leading, content: {
                Text("About " + landmark.name).font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text(landmark.description).font(.subheadline)
                    Spacer()
                }.font(.subheadline).foregroundStyle(.secondary)
            }).padding(.all)
        }.navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
     
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetails(landmark: modelData.landmarks[0])
        .environment(modelData)
}
