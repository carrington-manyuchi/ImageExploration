//
//  FittingGradientToText.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct FittingGradientToText: View {
    var body: some View {
        Text("Great Gravy Gradienting!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
            .overlay(
                LinearGradient(
                    colors: [.yellow, .black.opacity(0.85), .orange],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask({
                    Text("Great Gravy Gradienting!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                })
            )
    }
}

#Preview {
    FittingGradientToText()
}
