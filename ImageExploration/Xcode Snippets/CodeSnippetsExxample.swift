//
//  CodeSnippetsExxample.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct CodeSnippetsExxample: View {
    var body: some View {
        ZStack {
             Color
                .blue
                .opacity(0.3)
                .ignoresSafeArea()
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
        }
    }
}

#Preview {
    CodeSnippetsExxample()
}
