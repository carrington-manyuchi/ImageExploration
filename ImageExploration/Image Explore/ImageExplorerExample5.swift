//
//  ImageExplorerExample5.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ImageExplorerExample5: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(MoreImages.allCases, id: \.self) { image in
                    Image(image.rawValue, bundle: nil)
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 20))
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ImageExplorerExample5()
}
