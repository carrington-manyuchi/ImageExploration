//
//  ImageExploreExample1.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ImageExploreExample1: View {
    
    @State private var scaleToFit: Bool = true
    
    var frameWidth: CGFloat? {
        return scaleToFit ? nil : UIScreen.main.bounds.width * 0.8
    }
    
    var frameHeight: CGFloat? {
        return scaleToFit ? nil : UIScreen.main.bounds.height * 0.25
    }
    
    var aspectRatio: ContentMode {
        scaleToFit ? .fit : .fill
    }
    var body: some View {
        
        Image(imgLightening1)
            .resizable()
            .frame(width: frameWidth, height: frameHeight)
            .scaledToFill()
            .aspectRatio(contentMode: aspectRatio)
            .clipShape(.rect(cornerRadius: 20))
            .padding()
        
            .onTapGesture {
                scaleToFit.toggle()
            }
        
    }
}

#Preview {
    ImageExploreExample1()
}
