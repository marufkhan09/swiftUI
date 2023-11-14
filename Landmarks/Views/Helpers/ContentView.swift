//
//  ContentView.swift
//  Landmarks
//
//  Created by Maruf Khan on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    var body: some View {
        LandmarkList().environment(modelData)
    }
}

#Preview {
    ContentView().environment(ModelData())
}
