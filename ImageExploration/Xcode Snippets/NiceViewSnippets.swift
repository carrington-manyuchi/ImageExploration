//
//  NiceViewSnippets.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct NiceViewSnippets: View {
    var body: some View {

        ZStack {
            
            Color
                .blue
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("Hello View!")
                    .font(.title)
                    .fontWeight(.semibold)
                 
                
                Text("Hello, World!")
                    .font(.headline)
                    .fontWeight(.medium)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }

    }
}
struct NiceViewSnippetsTwo: View {
    
    @State private var textOpacity: CGFloat = 0.0
    var body: some View {

        ZStack {
            
            Color
                .red
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("Hello View!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .opacity(textOpacity)
               
                
                Text("Hello, World!")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(textOpacity)
                Spacer()
                ImageLinkSnippet()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .onAppear {
                withAnimation(.easeOut(duration: 2)) {
                    textOpacity = 1.0
                }
            }
        }

    }
}

#Preview {
    NiceViewSnippetsTwo()
}
