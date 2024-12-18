//
//  GradientTextSNippets.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct GradientTextSNippets: View {
    var body: some View {
        
        LinearGradient(
            colors: [.red, .blue, .yellow, .green],
            startPoint: .leading,
            endPoint: .trailing
        )
        .mask(
            Text("Carrington")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .padding()
        )
    }
}

#Preview {
    GradientTextSNippets()
}
