//
//  ImageLinkSnippet.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct ImageLinkSnippet: View {
    var body: some View {
        ZStack {
            
            Color
                .blue
                .opacity(0.7)
                .ignoresSafeArea()
            
            
            if let url = URL(string: "https://pixabay.com/photos/bird-parrot-feathers-4728857/") {
                Link(destination: url) {
                    let imageDimension: CGFloat = 200.0
                    Image("bird")
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageDimension, height: imageDimension)
                }
            }
            
            
            
            
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundStyle(.black)
//                .padding()
        }
    }
}

#Preview {
    ImageLinkSnippet()
}
