//
//  CircleImage.swift
//  firstapp
//
//  Created by MAC on 21/2/2021.
//

import SwiftUI

struct CircleImage: View {
    var body: some View { Image("turtlerock")
        .frame(width: 300, height: 200)
        .clipShape(Circle())
        .padding(0.0)
        .overlay(Circle().stroke(Color.white, lineWidth: 3))
       
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
