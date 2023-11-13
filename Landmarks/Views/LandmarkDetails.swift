//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Maruf Khan on 12/11/23.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark : Landmark
    var body: some View {
        ScrollView {
//            var id: Int
//            var name: String
//            var park: String
//            var state: String
//            var description: String
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            
            CircleImage(image: landmark.image).offset( y: -130).padding(.bottom,-130)
            
            VStack(alignment: .leading, content: {
                Text(landmark.name).font(.title)
                    .foregroundColor(.black)
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
    LandmarkDetails(landmark: ModelData().landmarks[0])
}
