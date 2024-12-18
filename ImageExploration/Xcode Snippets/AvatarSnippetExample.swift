//
//  AvatarSnippetExample.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct AvatarSnippetExample: View {
    var body: some View {
        Image("bird")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay {
                Circle()
                    .stroke(
                        Color.blue, lineWidth: 3
                    )
            }
            .padding()
        Text("Hello, World!")
    }
}

#Preview {
    AvatarSnippetExample()
}
