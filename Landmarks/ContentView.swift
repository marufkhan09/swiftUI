//
//  ContentView.swift
//  Landmarks
//
//  Created by Maruf Khan on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView().frame(height: 300)
            
            CircleImage().offset( y: -130).padding(.bottom,-130)
            
            VStack(alignment: .leading, content: {
                Text("Turtle Rock").font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
            }).padding(.all)
            Divider()
            VStack(alignment: .leading, content: {
                Text("About Turtle Rock").font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Descriptive text goes here").font(.subheadline)
                    Spacer()
                }.font(.subheadline).foregroundStyle(.secondary)
            }).padding(.all)
            
            
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
