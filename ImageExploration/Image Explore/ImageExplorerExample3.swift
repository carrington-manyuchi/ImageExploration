//
//  ImageExplorerExample3.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ImageExplorerExample3: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(MoreImages.allCases, id: \.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 20))
                        .padding()
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 1, y: 1)
                }
            }
        }
        
        
    }
}

#Preview {
    ImageExplorerExample3()
}
