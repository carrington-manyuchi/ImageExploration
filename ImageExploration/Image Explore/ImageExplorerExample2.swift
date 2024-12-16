//
//  ImageExplorerExample2.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ImageExplorerExample2: View {
    
    @State private var scaleToFit: Bool = true
    
    var resizeImage: ContentMode {
        scaleToFit ? .fit : .fill
    }
    
    var body: some View {
        Image(ImgType.imgLightening1.rawValue)
            .resizable()
            .aspectRatio(contentMode: resizeImage)
            .clipShape(.rect(cornerRadius: 20))
            .padding()
            .onTapGesture {
                scaleToFit.toggle()
            }
    }
}

#Preview {
    ImageExplorerExample2()
}
