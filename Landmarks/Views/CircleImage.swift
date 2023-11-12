//
//  CircleImage.swift
//  Landmarks
//
//  Created by Maruf Khan on 12/11/23.
//

import SwiftUI

struct CircleImage: View {
    let image : Image
    var body: some View {
        image.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(.white, lineWidth: 4)).shadow(radius: 7)

    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
