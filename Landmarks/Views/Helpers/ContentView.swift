//
//  ContentView.swift
//  Landmarks
//
//  Created by Maruf Khan on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    enum Tab {
        case featured
        case list
    }
    @State private var selection: Tab = .featured
    var body: some View {
      //  LandmarkList().environment(modelData)
        
        TabView(selection: $selection,
                content:  {
            CategoryHome()
                .tabItem { Label("Featured", systemImage: "star") }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem { Label("List", systemImage: "list.bullet") }
                .tag(Tab.list)
            
        })
    }
}

#Preview {
    ContentView().environment(ModelData())
}
