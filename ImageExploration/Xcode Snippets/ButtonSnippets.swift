//
//  ButtonSnippets.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct ButtonSnippets: View {
    var body: some View {
        Text("Buttons")
        
        Button {
            
        } label: {
            Text("Carrington")
                .foregroundStyle(.white)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(
                    Capsule()
                        .fill(.pink)
                )
        }

    }
}

#Preview {
    ButtonSnippets()
}
