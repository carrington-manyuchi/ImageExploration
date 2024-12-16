//
//  ImageExplorerExample6.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ImageExplorerExample6: View {
    
    @State private var isAnimated: Bool = false
    var text: String {
        isAnimated ? "Pause" : "Start"
    }
    
    var body: some View {
        ZStack {
            Color
                .purple
                .opacity(0.1)
                .ignoresSafeArea()
            Image(ImgType.imgLightening1.rawValue)
                .resizable()
                .clipShape(Circle())
                .frame(height: 200)
                .shadow(color: .black.opacity(0.7), radius: 10, x: 2, y: 2)
                .overlay {
                    Text(text)
                        .foregroundStyle(.green)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .background(
                            Color.blue
                        )
                        .clipShape(.rect(cornerRadius: 20))
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                
                                isAnimated.toggle()
                            }
                        }
                }
        }
    }
}

#Preview {
    ImageExplorerExample6()
}
